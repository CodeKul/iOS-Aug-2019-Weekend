import UIKit

var int_var = 10
var double_var = 10.23
var str_var = "Codekul"

var int_var_no_value : Int
int_var_no_value = 10
print(int_var_no_value)

int_var = 120
double_var = Double(int_var)
str_var = "The Gurukul for Coders!"
//str_var = String(double_var)

var str = "Codekul - \(str_var)" + " Concatination"

print(str)

// 1) Variables should have data type while declaring
// 2) Variable should be initialised before using it
// 3) You can't change the data type, because swift is type safe language

let my_const = 70

//my_const = 100

let PI : Double

PI = 3.14

//PI = 3.1416

print(PI)
