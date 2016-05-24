//: [Previous](@previous)

struct Animal {
  let species: String
  init?(species: String) {
    if species.isEmpty { return nil }
    self.species = species
  }
}

let someCreature = Animal(species: "Giraffe")
if let giraffe = someCreature {
  print("An animal was initialized with a species of \(giraffe.species)")
}

let anonymousCreature = Animal(species: "")
if anonymousCreature == nil {
  print("The anonymous creature could not be initialized")
}

enum TemperatureUnit {
  case Kelvin, Celsius, Fahrenheit
  init?(symbol: Character) {
    switch symbol {
    case "K":
      self = .Kelvin
    case "C":
      self = .Celsius
    case "F":
      self = .Fahrenheit
    default:
      return nil
    }
  }
}


let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
  print("This is a defined temperature unit, so initialization succeeded.")
}

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
  print("This is not a defined temperature unit, so initialization failed.")
}


enum TemperatureUnitA: Character {
  case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheitUnitA = TemperatureUnitA(rawValue: "F")
if fahrenheitUnitA != nil {
  print("This is a defined temperature unit, so initialization succeeded.")
}

let unknownUnitA = TemperatureUnitA(rawValue: "X")
if unknownUnitA == nil {
  print("This is not a defined temperature unit, so initialization failed.")
}

class Product {
  let name: String
  init?(name: String) {
    if name.isEmpty { return nil }
    self.name = name
  }
}

class CartItem: Product {
  let quantity: Int
  init?(name: String, quantity: Int) {
    if quantity < 1 { return nil }
    self.quantity = quantity
    super.init(name: name)
  }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
  print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
  print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
  print("Unable to initialize zero shirts ")
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
  print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
} else {
  print("Unable to initialize one unnamed product ")
}

class Document {
  var name: String?
  init() {}
  init?(name: String) {
    self.name = name
    if name.isEmpty { return nil }
  }
}

class AutomaticallyNamedDocument: Document {
  override init() {
    super.init()
    self.name = "[Untitled]"
  }
  override init(name: String) {
    super.init()
    if name.isEmpty {
      self.name = "[Untitled ]"
    } else {
      self.name = name
    }
  }
}

class UntitledDocument: Document {
  override init() {
    super.init(name: "[Untitled]")!
  }
}

//: [Next](@next)
