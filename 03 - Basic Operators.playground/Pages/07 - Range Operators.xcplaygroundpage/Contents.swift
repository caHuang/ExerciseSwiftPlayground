for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}


let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
  print("Person \(i + 1) is called \(names[i])")
}


for name in names[2...] {
  print(name)
}

for name in names[...2] {
  print(name)
}


for name in names[..<2] {
  print(name)
}


let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)
