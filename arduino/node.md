# Arduino & Node.js

## Necessary Packages

```
$ npm install johnny-five @types/johnny-five --save-dev
```

Note: Try to execute with the typescript, the ts-node module can be installed

```
$ npm install ts-node --save-dev
```

## Firmata Bridge

To use an Arduino with JavaScript (and Ruby, Python, and other scripting languages). Arduino provides standard firmware that makes pins accessible via serial communication. Basically, Firmata turns a microcontroller into a “client” that follows commands from a “host” computer.

More information can be found at https://github.com/firmata/protocol

Before you can start programming your NodeBots, you will need to load Firmata onto your Arduino-compatible microcontroller:

```
Download Arduino IDE
Connect your Arduino-compatible microcontroller via USB
Launch Arduino IDE and open the Firmata sketch via the menu: File > Examples > Firmata > StandardFirmata
Select your Arduino board type (e.g. Arduino Uno) via Tools > Board
Select the port for your board via Tools > Serial Port > (the comm port of your Arduino)
Upload the program by selecting File > Upload
```

You can also install the firmata-party.

```
$ npm install -g firmata-party
```

Then attach arduino Uno via USB

```
$ firmata-party uno --debug
found uno on port /dev/cu.usbmodem14131
connected
reset complete.
flashing, please wait...
flash complete.
```

## Example 

* [blink](/examples/arduino/arduino_node/blink.ts)

## More infomation

* [NodeJs and Arduino](https://www.instructables.com/id/NodeJs-and-Arduino/#:~:text=%20NodeJs%20and%20Arduino%20%201%20Step%201%3A,javasript.%20It%20is%20built%20on%20Chrome%27s...%20More%20)
* [Arduino Experimenter's Guide for NodeJS](http://node-ardx.org)