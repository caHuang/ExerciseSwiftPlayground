//: [Previous](@previous)

//: Numeric Literals

//: Integer literals can be written as:
//: * A decimal number, with no prefix
//: * A binary number, with a 0b prefix
//: * An octal number, with a 0o prefix
//: * A hexadecimal number, with a 0x prefix

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

//: For decimal numbers with an exponent of exp, the base number is multiplied by 10exp:
//: * 1.25e2 means 1.25 x 102, or 125.0.
//: * 1.25e-2 means 1.25 x 10-2, or 0.0125.

//: For hexadecimal numbers with an exponent of exp, the base number is multiplied by 2exp:
//: * 0xFp2 means 15 x 22, or 60.0.
//: * 0xFp-2 means 15 x 2-2, or 3.75.

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//: [Next](@next)
