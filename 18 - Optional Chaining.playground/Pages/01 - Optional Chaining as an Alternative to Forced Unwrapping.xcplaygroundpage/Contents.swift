class Person {
  var residence: Residence?
}

class Residence {
  var numberOfRooms = 1
}

let john = Person()

//: this code always triggers a runtime error when residence is nil.
//let roomCount = john.residence!.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
  print("John's residence has \(roomCount) room(s).")
} else {
  print("Unable to retrieve the number of rooms.")
}

john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
  print("John's residence has \(roomCount) room(s).")
} else {
  print("Unable to retrieve the number of rooms.")
}

//: [Next](@next)
