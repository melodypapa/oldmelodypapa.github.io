# Arduino & Node.js

## Necessary Packages

```
npm install johnny-five @types/johnny-five --save-dev
```

Note: Try to execute with the typescript, the ts-node module can be installed

```
npm install ts-node --save-dev
```

## Setting Up Firmata

Before you can start programming your NodeBots, you will need to load Firmata onto your Arduino-compatible microcontroller:

```
Download Arduino IDE
Connect your Arduino-compatible microcontroller via USB
Launch Arduino IDE and open the Firmata sketch via the menu: File > Examples > Firmata > StandardFirmata
Select your Arduino board type (e.g. Arduino Uno) via Tools > Board
Select the port for your board via Tools > Serial Port > (the comm port of your Arduino)
Upload the program by selecting File > Upload
```

## Example 

* [blink](/examples/arduino/arduino_node/blink.ts)

## More infomation

* [NodeJs and Arduino](https://www.instructables.com/id/NodeJs-and-Arduino/#:~:text=%20NodeJs%20and%20Arduino%20%201%20Step%201%3A,javasript.%20It%20is%20built%20on%20Chrome%27s...%20More%20)
* [Arduino Experimenter's Guide for NodeJS](http://node-ardx.org)