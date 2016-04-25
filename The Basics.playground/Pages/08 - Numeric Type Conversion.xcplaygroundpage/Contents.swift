//: [Previous](@previous)

// UInt8 cannot store negative numbers, and so this will report an error
//let cannotBeNegative: UInt8 = -1

// Int8 cannot store a number larger than its maximum value, and so this will also report an error
//let tooBig: UInt8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOnefiveNine = 0.14159
let pi = Double(three) + pointOneFourOnefiveNine

let integerPi = Int(pi)

//: [Next](@next)
