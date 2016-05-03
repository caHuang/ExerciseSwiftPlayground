//: [Previous](@previous)

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.removeAtIndex(0) }
print(customersInLine.count)

print("Now serving \(customerProvider())!")
print(customersInLine.count)


func serveCustomer(customerProvider: () -> String) {
  print("Now serving \(customerProvider())!")
}
serveCustomer( { customersInLine.removeAtIndex(0) } )


func serveCustomer(@autoclosure customerProvider: () -> String) {
  print("Now serving \(customerProvider())!")
}
serveCustomer(customersInLine.removeAtIndex(0))


var customerProviders: [() -> String] = []
func collectCustomerProviders(@autoclosure(escaping) customerProvider: () -> String) {
  customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.removeAtIndex(0))
collectCustomerProviders(customersInLine.removeAtIndex(0))

print("Collected \(customerProviders.count) closures.")

for customerProvider in customerProviders {
  print("Now serving \(customerProvider())!")
}

//: [Next](@next)
