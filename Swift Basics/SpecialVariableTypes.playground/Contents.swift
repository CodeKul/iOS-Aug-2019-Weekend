import UIKit

var str1 = "Codekul"

var str2 : String

str2 = "The Gurukul for Coders!"

// Codekul - The Gurukul for Coders!

var str3 = String()

str3 = str1 + " - " + str2

str3 = "\(str1) - \(str2)"
print(str3)

var int1 = 10
var int2 = 20

var str4 = "\(int1 + int2)"

// Optionals

var opt1 : String? = nil

opt1 = "ABCD"

str1 = "\(opt1!)"

print(str1)


var no1 : Int? = nil
var no2 = 20

var res = (no1 ?? 100) + no2 // ! is used to unwrapping of optional value

print(res)


// Any

var any1: Any = "Codekul"
print(any1)

any1 = 10
print(any1)

any1 = 20.34
print(any1)

any1 = true
print(any1)

var any2 : Any = "A"
any1 = 10

res = ((any1 as? Int) ?? 0) + ((any2 as? Int) ?? 0)

print(res)

var t1 = (1,2,3,4, "A", "B")
t1.5
