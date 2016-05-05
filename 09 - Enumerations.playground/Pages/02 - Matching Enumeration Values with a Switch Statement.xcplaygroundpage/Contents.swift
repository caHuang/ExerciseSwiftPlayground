//: [Previous](@previous)

enum CompassPoint {
  case North
  case South
  case East
  case West
}

enum Planet {
  case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West
directionToHead = .South

switch directionToHead {
case .North:
  print("Lots of planets have a north")
case .South:
  print("Watch out for penguins")
case .East:
  print("Where the sun rises")
case .West:
  print("Where the skies are blue")
}


let somePlanet = Planet.Earth
switch somePlanet {
case .Earth:
  print("Mostly harmless")
default:
  print("Not a safe place for humans")
}

//: [Next](@next)
