let buf = Buffer.alloc(4);

/* <Buffer 00 00 00 00> */
buf.fill(0);
console.log(buf);

/* <Buffer 00 00 78 00> */
buf.writeUInt8(0x78, 2);
console.log(buf);

/* 120 */
console.log(buf.readUInt8(2));

/* x */
console.log(buf.toString());

/* 00007800 */
console.log(buf.toString('hex'));

/* <Buffer de ad be ef> */
let buf2 = Buffer.from("DEADBEEF", 'hex');
console.log(buf2);