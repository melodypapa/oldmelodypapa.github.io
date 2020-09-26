import * as five from "johnny-five";

let board = new five.Board();

board.on('ready', ()=> {
    let led = new five.Led(13);
    led.blink(500);
});