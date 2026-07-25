/*
  Lucier Room controller
  ----------------------
  Alternates two Max buffers while a source is repeatedly played through either
  a physical room or the companion lucier_virtual_room~ abstraction.

  Named sends keep the JavaScript independent from the patcher's visual layout.
*/

autowatch = 1;
inlets = 1;
outlets = 3;

var sourceMode = 1;       // 1 = microphone, 2 = audio file
var roomMode = 2;         // 1 = physical room, 2 = virtual room
var iterationTarget = 8;
var tailMs = 1200;
var durationMs = 0;
var currentBuffer = "A";
var destinationBuffer = "B";
var completedPasses = 0;
var capturing = false;
var processing = false;
var awaitingPlaybackEnd = false;
var captureStartedAt = 0;
var scheduledTask = null;
var maximumDurationMs = 650000;

function loadbang() {
    initialize();
}

function initialize() {
    input(1);
    room(2);
    iterations(8);
    tail(1200);
    stopAll();
    setStatus("ready — capture a microphone or audio-file source");
    outlet(1, 0);
    outlet(2, 0);
}

function input(value) {
    sourceMode = clampInteger(value, 1, 2);
    messnamed("lucier.sourceSelector", sourceMode);
    if (!capturing && !processing) {
        setStatus(sourceMode === 1 ? "source: microphone" : "source: audio file");
    }
}

function room(value) {
    roomMode = clampInteger(value, 1, 2);
    messnamed("lucier.roomSelector", roomMode);
    if (!capturing && !processing) {
        setStatus(roomMode === 1 ? "room path: physical" : "room path: virtual");
    }
}

function iterations(value) {
    iterationTarget = clampInteger(value, 1, 50);
}

function tail(value) {
    tailMs = clampInteger(value, 0, 10000);
}

function capture() {
    capturing = false;
    processing = false;
    awaitingPlaybackEnd = false;
    cancelScheduledTask();
    stopAll();

    prepareBuffer("A");
    prepareBuffer("B");
    messnamed("lucier.phaseSelector", 1);

    currentBuffer = "A";
    destinationBuffer = "B";
    completedPasses = 0;
    durationMs = 0;
    processing = false;
    awaitingPlaybackEnd = false;
    capturing = true;
    captureStartedAt = new Date().getTime();

    messnamed("lucier.recA", 1);

    if (sourceMode === 2) {
        scheduledTask = new Task(function () {
            messnamed("lucier.file", 1);
        }, this);
        scheduledTask.schedule(40);
        setStatus("capturing audio file into pass 0");
    } else {
        setStatus("capturing microphone — speak, then finish source");
    }

    outlet(1, 0);
    outlet(2, 0);
}

function finish() {
    if (!capturing) {
        setStatus("nothing is being captured");
        return;
    }

    capturing = false;
    messnamed("lucier.file", 0);
    messnamed("lucier.recA", 0);

    durationMs = Math.max(250, Math.round(new Date().getTime() - captureStartedAt));
    durationMs = Math.min(durationMs, maximumDurationMs);
    cropBuffer("A", durationMs);

    currentBuffer = "A";
    destinationBuffer = "B";
    completedPasses = 0;

    setStatus("source ready — " + formatSeconds(durationMs) + " s");
    outlet(1, 0);
    outlet(2, durationMs);
}

function source_done() {
    if (capturing && sourceMode === 2) {
        finish();
    }
}

function run() {
    if (capturing) {
        setStatus("finish the source capture before running iterations");
        return;
    }

    if (durationMs <= 0) {
        setStatus("capture a source first");
        return;
    }

    stopAll();
    cancelScheduledTask();

    processing = true;
    awaitingPlaybackEnd = false;
    completedPasses = 0;
    currentBuffer = "A";
    destinationBuffer = "B";
    messnamed("lucier.phaseSelector", 2);

    beginPass();
}

function beginPass() {
    if (!processing) {
        return;
    }

    if (completedPasses >= iterationTarget) {
        completeRun();
        return;
    }

    destinationBuffer = currentBuffer === "A" ? "B" : "A";
    clearBuffer(destinationBuffer);
    setRecorder(destinationBuffer, 1);

    setStatus(
        "pass " + (completedPasses + 1) + "/" + iterationTarget +
        " — " + currentBuffer + " → " + destinationBuffer
    );

    scheduledTask = new Task(function () {
        if (!processing) {
            return;
        }
        awaitingPlaybackEnd = true;
        playBuffer(currentBuffer, durationMs);
        scheduledTask = new Task(function () {
            pass_done();
        }, this);
        scheduledTask.schedule(durationMs);
    }, this);
    scheduledTask.schedule(50);
}

function pass_done() {
    if (!processing || !awaitingPlaybackEnd) {
        return;
    }

    awaitingPlaybackEnd = false;
    setStatus(
        "pass " + (completedPasses + 1) + "/" + iterationTarget +
        " — recording room tail"
    );

    scheduledTask = new Task(function () {
        finishPass();
    }, this);
    scheduledTask.schedule(tailMs);
}

function finishPass() {
    if (!processing) {
        return;
    }

    setRecorder(destinationBuffer, 0);
    currentBuffer = destinationBuffer;
    completedPasses += 1;
    durationMs = Math.min(maximumDurationMs, durationMs + tailMs);
    cropBuffer(currentBuffer, durationMs);

    outlet(1, completedPasses);
    outlet(2, durationMs);

    if (completedPasses >= iterationTarget) {
        completeRun();
        return;
    }

    scheduledTask = new Task(function () {
        beginPass();
    }, this);
    scheduledTask.schedule(200);
}

function completeRun() {
    processing = false;
    awaitingPlaybackEnd = false;
    stopAll();
    setStatus(
        "complete — current pass: " + currentBuffer +
        ", " + formatSeconds(durationMs) + " s"
    );
}

function stop() {
    var wasBusy = capturing || processing;
    capturing = false;
    processing = false;
    awaitingPlaybackEnd = false;
    cancelScheduledTask();
    stopAll();
    setStatus(wasBusy ? "stopped — current buffers preserved" : "already stopped");
}

function reset() {
    stop();
    prepareBuffer("A");
    prepareBuffer("B");
    messnamed("lucier.phaseSelector", 1);

    durationMs = 0;
    currentBuffer = "A";
    destinationBuffer = "B";
    completedPasses = 0;

    outlet(1, 0);
    outlet(2, 0);
    setStatus("reset — capture a new source");
}

function export_current() {
    if (durationMs <= 0) {
        setStatus("nothing to export");
        return;
    }

    if (processing || capturing) {
        setStatus("stop or finish the current operation before exporting");
        return;
    }

    if (currentBuffer === "A") {
        messnamed("lucier.bufferA", "write");
    } else {
        messnamed("lucier.bufferB", "write");
    }
    setStatus("choose a location for pass " + currentBuffer);
}

function stopAll() {
    messnamed("lucier.recA", 0);
    messnamed("lucier.recB", 0);
    messnamed("lucier.playA", "stop");
    messnamed("lucier.playB", "stop");
    messnamed("lucier.file", 0);
}

function playBuffer(name, lengthMs) {
    if (name === "A") {
        messnamed("lucier.playA", "start", 0, lengthMs);
    } else {
        messnamed("lucier.playB", "start", 0, lengthMs);
    }
}

function setRecorder(name, enabled) {
    if (name === "A") {
        messnamed("lucier.recA", enabled);
    } else {
        messnamed("lucier.recB", enabled);
    }
}

function clearBuffer(name) {
    prepareBuffer(name);
}

function prepareBuffer(name) {
    if (name === "A") {
        messnamed("lucier.bufferA", "size", 660000);
        messnamed("lucier.bufferA", "clear");
    } else {
        messnamed("lucier.bufferB", "size", 660000);
        messnamed("lucier.bufferB", "clear");
    }
}

function cropBuffer(name, lengthMs) {
    if (name === "A") {
        messnamed("lucier.bufferA", "crop", 0, lengthMs);
    } else {
        messnamed("lucier.bufferB", "crop", 0, lengthMs);
    }
}

function cancelScheduledTask() {
    if (scheduledTask !== null) {
        scheduledTask.cancel();
        scheduledTask = null;
    }
}

function setStatus(message) {
    outlet(0, ["set", message]);
}

function formatSeconds(milliseconds) {
    return (milliseconds / 1000).toFixed(2);
}

function clampInteger(value, minimum, maximum) {
    return Math.max(minimum, Math.min(maximum, Math.round(Number(value))));
}
