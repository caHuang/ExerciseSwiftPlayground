//: [Previous](@previous)

enum ASCIIControlCharacter: Character {
  case Tab = "\t"
  case LineFeed = "\n"
  case CarriageReturn = "\r"
}


enum Planet: Int {
  case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}


enum CompassPoint: String {
  case North, South, East, West
}


let earthsOrder = Planet.Earth.rawValue

let sunsetDirection = CompassPoint.West.rawValue


let possiblePlanet = Planet(rawValue: 7)


let positionToFind = 9
if let somePlanet = Planet(rawValue: positionToFind) {
  switch somePlanet {
  case .Earth:
    print("Mostly harmless")
  default:
    print("Not a safe place for humans")
  }
} else {
  print("There isn't a planet at position \(positionToFind)")
}

//: [Next](@next)
