class Counter {
  var count = 0
  func increment() {
    count += 1
  }
  func incrementBy(amount: Int) {
    count += amount
  }
  func reset() {
    count = 0
  }
}


let counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()


class CounterA {
  var count: Int = 0
  func incrementBy(amount: Int, numberOfTimes: Int) {
    count += amount * numberOfTimes
  }
}

let counterA = CounterA()
counterA.incrementBy(5, numberOfTimes: 3)


struct Point {
  var x = 0.0, y = 0.0
  func isToTheRightOfX(x: Double) -> Bool {
    return self.x > x
  }
}

let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
  print("This point is to the right of the line where x == 1.0")
}


struct PointA {
  var x = 0.0, y = 0.0
  mutating func moveByX(deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
}

var somePointA = PointA(x: 1.0, y: 1.0)
somePointA.moveByX(2.0, y: 3.0)
print("The point is now at (\(somePointA.x), \(somePointA.y))")


let fixedPoint = PointA(x: 3.0, y: 3.0)
//fixedPoint.moveByX(2.0, y: 3.0)


struct PointB {
  var x = 0.0, y = 0.0
  mutating func moveByX(deltaX: Double, y deltaY: Double) {
    self = PointB(x: x + deltaX, y: y + deltaY)
  }
}


enum TriStateSwitch {
  case Off, Low, High
  mutating func next() {
    switch self {
    case Off:
      self = Low
    case Low:
      self = High
    case High:
      self = Off
    }
  }
}

var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.next()

//: [Next](@next)
