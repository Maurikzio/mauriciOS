import UIKit

//task FUNCTION CALCULATOR
func calculator(action: (Int, Int) -> Int, number1: Int, number2: Int) -> Int{
    return action(number1, number2)
}
func calculator(action: (Int, Int) -> Double, number1: Int, number2: Int) -> Double{
    return action(number1, number2)
}

//closures for add, subs, mult, mod, div, pow
func performAddition(number1: Int, number2: Int) -> Int{
    return number1 + number2
}
func performSubstraction(number1: Int, number2: Int) -> Int{
    return number1 - number2
}
func performMultiplication(number1: Int, number2: Int) -> Int{
    return number1 * number2
}
func performModulus(number1: Int, number2: Int) -> Int{
    return number1 % number2
}
func performDivision(number1: Int, number2: Int) -> Double{
    guard number2 != 0 else { return 0 }
    return Double(number1) / Double(number2)
}
func performPower(base: Int, exponent: Int) -> Int{
    let _base = base
    var exp = exponent
    var result = 1
    while exp != 0{
        result *= _base
        exp -= 1
    }
    return result
}

//values, and operation selection
let operationToPerform = "/"
let num1 = 10
let num2 = 2

switch operationToPerform {
    case "+":
        print(calculator(action: performAddition, number1: num1, number2: num2))
    case "-":
        print(calculator(action: performSubstraction, number1: num1, number2: num2))
    case "*":
        print(calculator(action: performMultiplication, number1: num1, number2: num2))
    case "mod":
        print(calculator(action: performModulus, number1: num1, number2: num2))
    case "/":
        print(calculator(action: performDivision, number1: num1, number2: num2))
    case "^":
        print(calculator(action: performPower, number1: num1, number2: num2))
    default:
        print("unknown operation")
}

//end of task



//CLOSURES PRACTICE
/*hard code
func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int]{
    var filteredSetOfNumber = [Int]()
    for num in numbers {
        if num > value{
            filteredSetOfNumber.append(num)
        }
    }
    return filteredSetOfNumber
}

let filteredList = filterGreaterThanValue(value: 3, numbers: [1, 2, 3, 4, 5, 10])
print(filteredList) */

//using closures
func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filteredNumbers = [Int]()
    for num in numbers{
        //perform some condition here
        if closure(num){
            filteredNumbers.append(num)
        }
    }
    return filteredNumbers
}

func greaterThanThree(value: Int) -> Bool{
    return value > 3
}
func divisibleByFive(value: Int) -> Bool{
    return value % 5 == 0
}

//let filteredList = filterWithPredicateClosure(closure: greaterThanThree, numbers: [10, 5, 1, 2, 0])
//let filteredList = filterWithPredicateClosure(closure: divisibleByFive, numbers: [10, 5, 1, 2, 0])
//print(filteredList)







