import UIKit

class ComplexNumber {
    var real: Int
    var imag: Int
    
    init(real: Int, imag: Int) {
        self.real = real
        self.imag = imag
    }
    
    func display() {
        print("(\(real) + \(imag)i)")
    }
    
    func addition(com1: ComplexNumber) -> ComplexNumber {
        var res = ComplexNumber(real: 0, imag: 0)
        res.real = self.real + com1.real
        res.imag = self.imag + com1.imag
        
        return res
    }
    
    func subtraction(com1: ComplexNumber) -> ComplexNumber {
        var res = ComplexNumber(real: 0, imag: 0)
        res.real = self.real - com1.real
        res.imag = self.imag - com1.imag
        
        return res
    }
    
    func multiplication(com1: ComplexNumber) -> ComplexNumber {
        var res = ComplexNumber(real: 0, imag: 0)
        res.real = (self.real * com1.real) - (self.imag * com1.imag)
        res.imag = (self.real * com1.imag) + (self.imag * com1.real)
        
        return res
    }

}


var c1 = ComplexNumber(real: 10, imag: 10)
var c2 = ComplexNumber(real: 20, imag: 20)

c1.display()
c2.display()

var c3 = c1.addition(com1: c2)
c3.display()

c3 = c2.subtraction(com1: c1)
c3.display()

c3 = c1.multiplication(com1: c2)
c3.display()
