import UIKit

class MyClass {
    
    var myVar = 0
    
    init() {
        myVar = 0
        print("init")
    }
    
    func display() {
        print(myVar)
    }
}

var obj1 = MyClass()
obj1.myVar = 100
obj1.display()


