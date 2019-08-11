import UIKit

// if else
/*
 if condition {
    true statements
 }
 else {
    false statements
 }
 */

var a = 20, b = 20

if a < b {
    print("a is less than b")
    if a == 10 {
        print("a is equal to 10")
    }
}
else if a == b {
    print("a and b are equal")
}
else {
    print("a is greater than b")
}

// Loops
/*
 initialisation
 while condition {
    statements
    incr/decr
 }
 */

var i = 0
//while i < 10 {
//    if i % 2 == 0 {
//        print("Codekul")
//    }
//    else {
//        print("The Gurukul for Coders!")
//    }
//    i += 1
//}

/*
 initialisation
 repeat {
    statements
    incr/decr
 } while condition
 */
//i = 0
//repeat {
//    print("Codekul")
//    i += 1
//}while i < 10

/*
 for item in collection {
    statements
 }
 */

//for it in 10..<23 {
//    print(it)
//}

var arr = [11,22,33,44,55,66,77,88,99,100]

arr[6]

for element  in arr {
    print(element)
}

for char in "Codekul" {
    print(char.uppercased())
}

var r = 10

while r > 5{
    print (r)
    r -= 1
}



