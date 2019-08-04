enum ASCIIControlCharacter: Character {
  case tab = "\t"
  case lineFeed = "\n"
  case carriageReturn = "\r"
}


enum Planet: Int {
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


enum CompassPoint: String {
  case north, south, east, west
}


let earthsOrder = Planet.earth.rawValue

let sunsetDirection = CompassPoint.west.rawValue


let possiblePlanet = Planet(rawValue: 7)


let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
  switch somePlanet {
  case .earth:
    print("Mostly harmless")
  default:
    print("Not a safe place for humans")
  }
} else {
  print("There isn't a planet at position \(positionToFind)")
}
