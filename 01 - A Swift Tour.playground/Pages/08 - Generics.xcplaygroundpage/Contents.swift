//: [Previous](@previous)

//: Generics

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
  var result = [Item]()
  for _ in 0..<numberOfTimes {
    result.append(item)
  }
  return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

enum OptionalValue<Wrapped> {
  case None
  case Some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
  where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    for lhsItem in lhs {
      for rhsItem in rhs {
        if lhsItem == rhsItem {
          return true
        }
      }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
