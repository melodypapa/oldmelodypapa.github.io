var Board = require('firmata');

Board.requestPort(function (error, port) {
    if (error) {
        console.log(error);
        return;
    }

    var board = new Board(PortInfo.);
    // start to blink when the Arduino is ready
    board.on("ready", function () {
        // main part
        console.log('connected: ' + modem);
        var ledOn = true;
        // configure pin 13 as output
        board.pinMode(13, board.MODES.OUTPUT);
        // blink the LED
        setInterval(function () {
            if (ledOn) {
                console.log('ON');
                board.digitalWrite(13, board.HIGH);
            } else {
                console.log('OFF');
                board.digitalWrite(13, board.LOW);
            }
            ledOn = !ledOn;
        }, 500);
    });
});
