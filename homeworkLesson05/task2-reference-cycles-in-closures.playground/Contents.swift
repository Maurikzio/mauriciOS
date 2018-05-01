import UIKit
//REFERENCE CYCLE IN CLOSURES


class Operand {
    let number: Int
    //part 1
    weak var operand: Operand?
    //part 2
    let aConstant = 100
    var aBlock: (() -> ())? = nil
    
    init(number: Int) {
        print("init")
        self.number = number
        //part2
        aBlock = {[weak self] in //here self will be captured as weak,
            print(self!.aConstant)
        }
    }
    deinit {
        print("Cleaning the operand \(self.number)")
        print("deinit")
    }
}
//part1
//codigo para retainCycle
var firstOperand: Operand? = Operand(number: 5)
var secondOperand: Operand? = Operand(number: 6)

//defining closure
var sumOf2numbers: (Operand?, Operand?) -> Int = { $0!.number + $1!.number }

//linking the operands
firstOperand?.operand = secondOperand
secondOperand?.operand = firstOperand

//using closure
let resultado = sumOf2numbers(firstOperand, secondOperand)

firstOperand = nil
secondOperand = nil

//part2
var thirdOperand: Operand? = Operand(number: 7)
thirdOperand = nil










