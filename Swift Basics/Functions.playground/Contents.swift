import UIKit

func function() {
    print("function")
}

function()

func functionWith(param: String) {
    print("Param: \(param)")
}

var myStr = "Codekul"
functionWith(param: myStr)
print(myStr)


func functionWith(label param: String) {
    print("String: \(param)")
}

functionWith(label: "Chetan")

func display(studentName name: String) {
    print(name)
}

display(studentName: "Indira")


func functionWithoutLabel(_ name: String) {
    print(name)
}

functionWithoutLabel("iOS Morning Batch")

func functionWithParams(ThisIsLabel1 param1: Int, ThisIsLabel2 param2: Double, ThisIsLabel3 param3: String) {
    print("Int: \(param1)")
    print("Double: \(param2)")
    print("String: \(param3)")
}

functionWithParams(ThisIsLabel1: 10, ThisIsLabel2: 20.89, ThisIsLabel3: "CODEKUL")

func functionWithDefaultValue(param1: String = "CODEKUL", param2: Int) {
    print(param1)
    print(param2)
}

functionWithDefaultValue(param1: "CK", param2: 20)

functionWithDefaultValue(param2: 30)


func functionWithreturningValue() -> String {
    return "CODEKUL123"
}

print(functionWithreturningValue())

func functionWithInOut(param: inout String) {
    param += " - The Gurukul for Coders!"
}

var str = "CodeKul"
print("Before call: \(str)")
functionWithInOut(param: &str)
print("After call: \(str)")


var myFunc = { () -> String in
    print("Function called")
    return "Codekul"
}

myFunc()
var myNewFunc = myFunc
myNewFunc()

func functionWithFunctionAsAParam(function: (Int) -> Void) {
    print("functionWithFunctionAsAParam")
    function(10)
}

functionWithFunctionAsAParam { (myInt) in
    print("My Int: \(myInt)")
}


func myBiggerTask(completion: (Bool) -> Void) {
    print("Bigger task is under process...")
    completion(true)
}

myBiggerTask { (status) in
    if status {
        print("Bigger task completed")
    }
    else {
        print("Bigger task incomplete")
    }
}


func functionWithInoutClosure(closureWithInOut: (_ data: inout String) -> ()) {
    print("functionWithInoutClosure")
    var str = "Codekul"
    closureWithInOut(&str)
    print(str)
}

functionWithInoutClosure { (str) in
    str += " - The Gurukul for Coders!"
}



func functionWithVariadic(param: Double...) {
    print(param)
}

functionWithVariadic(param: 1,2,3,4,5,6,7,8,9,10,11,12,13)
