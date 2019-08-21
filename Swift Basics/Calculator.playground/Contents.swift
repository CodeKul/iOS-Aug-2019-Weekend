import UIKit

class Calculator {
    var op1: Int, op2: Int
    init(op1: Int, op2: Int) {
        self.op1 = op1
        self.op2 = op2
    }
    func setOperands(op1: Int, op2: Int) {
        self.op1 = op1
        self.op2 = op2
    }
    func addition() {
        print("Addition: \(op1 + op2)")
    }
    func subtraction() {
        print("Subtraction: \(op1 - op2)")
    }
    func multiplication() {
        print("Multiplication: \(op1 * op2)")
    }
    func division() {
        print("Division: \(op1 / op2)")
    }
}
var calc = Calculator(op1: 57, op2: 12)
calc.addition()
calc.subtraction()
calc.multiplication()
calc.division()

calc.setOperands(op1: 34, op2: 29)
calc.addition()
calc.subtraction()
calc.multiplication()
calc.division()
