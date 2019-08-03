import UIKit

// Array

var arr1 = [1,2,3,4,5,6,7,8,9]

print(arr1)
print(arr1[3])
//print(arr1[9])

arr1.insert(10, at: 4)
arr1.remove(at: 5)
arr1.append(11)
print(arr1)

// Dictionary

// Key and Value pair

var dict = ["key1" : "value1", "key2" : "value2"]

print(dict["key1"])

var dict2 = ["One": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5, "Six": 6, "Seven": 7, "Eight": 8, "Nine": 9]

print(dict2["Two"])

var dict3 = [1: "One", 2: "Two"]

print(dict3[2])


// String

var str = "Codekul"

str.append(" ")
str.append("-")
str.append(" ")
str.append("T")
str.append("h")
str.append("e")
str.append(" ")

str.append("Gurukul")
str = str + " for Coders!."

str.removeLast()
print(str)


