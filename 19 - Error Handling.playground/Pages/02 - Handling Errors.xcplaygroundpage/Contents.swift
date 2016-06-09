//: [Previous](@previous)

enum VendingMachineError: ErrorType {
  case InvalidSelection
  case InsufficientFunds(coinsNeeded: Int)
  case OutOfStock
}

throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)


struct Item {
  var price: Int
  var count: Int
}

class VendingMachine {
  var inventory = [
    "Candy Bar": Item(price: 12, count: 7),
    "Chips": Item(price: 10, count: 4),
    "Pretzels": Item(price: 7, count: 11)
  ]
  var coinsDeposited = 0
  func dispenseSnack(snack: String) {
    print("Dispensing \(snack)")
  }
  
  func vend(itemNamed name: String) throws {
    guard let item = inventory[name] else {
      throw VendingMachineError.InvalidSelection
    }
    
    guard item.count > 0 else {
      throw VendingMachineError.OutOfStock
    }
    
    guard item.price <= coinsDeposited else {
      throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
    }
    
    coinsDeposited -= item.price
    
    var newItem = item
    newItem.count -= 1
    inventory[name] = newItem
    
    dispenseSnack(name)
  }
}

let favoriteSnacks = [
  "Alice": "Chips",
  "Bob": "Licorice",
  "Eve": "Pretzels",
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
  let snackName = favoriteSnacks[person] ?? "Candy Bar"
  try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
  try buyFavoriteSnack("Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
  print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
  print("Out of Stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
  print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
}

//func fetchData() -> Data? {
//  if let data = try? fetchDataFromDisk() { return data }
//  if let data = try? fetchDataFromServer() { return data }
//  return nil
//}

//let photo = try! loadImage("./Resources/John Appleseed.jpg")



//: [Next](@next)

