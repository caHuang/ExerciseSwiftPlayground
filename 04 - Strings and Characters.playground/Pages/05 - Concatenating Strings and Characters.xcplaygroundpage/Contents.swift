let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2


var instruction = "look over"
instruction += string2


let exclamationMark: Character = "!"
welcome.append(exclamationMark)


let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)

let goodStart = """
one
two

"""
print(goodStart + end)
