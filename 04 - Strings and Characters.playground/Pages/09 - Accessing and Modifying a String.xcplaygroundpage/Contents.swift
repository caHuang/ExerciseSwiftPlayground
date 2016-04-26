//: [Previous](@previous)

let greeting = "Guten Tag!"
greeting[greeting.startIndex]

greeting[greeting.endIndex.predecessor()]
greeting[greeting.startIndex.successor()]

let index = greeting.startIndex.advancedBy(7)
greeting[index]

//greeting[greeting.endIndex]
//greeting.endIndex.successor()

for index in greeting.characters.indices {
  print("\(greeting[index]) ", terminator: " ")
}

var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)

welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())

welcome.removeAtIndex(welcome.endIndex.predecessor())
let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)


//: [Next](@next)
