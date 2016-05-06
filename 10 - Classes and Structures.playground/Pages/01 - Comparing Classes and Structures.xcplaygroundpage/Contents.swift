class SomeClass {
  // class definition goes here
}

struct SomeStructure {
  // structure definition goes here
}


struct Resolution {
  var width = 0
  var height = 0
}

class VideoMode {
  var resolution = Resolution()
  var interlaced = false
  var frameRate = 0.0
  var name: String?
}


let someResolution = Resolution()
let someVideoMode = VideoMode()


print("The width of someResolution is \(someResolution.width)")


print("The width of someVideoMode is \(someVideoMode.resolution.width)")


someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")


let vga = Resolution(width: 640, height: 480)

//: [Next](@next)
