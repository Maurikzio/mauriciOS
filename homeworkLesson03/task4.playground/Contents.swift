import UIKit
//TASK 4, optionals

//1, integer without value
var integerNumber:Int?

//2, floating numer without initial value
var decimalNumber:Double?

//3 assing value to integerNumber
integerNumber = 10

//4, increment the value
integerNumber! += integerNumber!

//5, change the sign of the integerNumber to the opposite
integerNumber! = -integerNumber!
print(integerNumber!)

//6 pass the value of integerNUmber to decimalNumber
decimalNumber = Double(integerNumber!)

//7, create pairOrValues, which contains the values of integerNumber and decimalNumber
var pairOrValues = (integerNumber, decimalNumber)

//8, check whether pairOfValues allocates an integer value print it, else nope
type(of: pairOrValues.0!) == Int.self ? print(type(of: pairOrValues.0!)) : print("types do not match!")

//9,check if pairOfValues allocates a values that represent a floating point number, and print it
type(of: pairOrValues.1!) == Double.self ? print(type(of: pairOrValues.1)) : print("types do not match")

//10 show/print the value of the variable decimalNumber usign optional binding
if let unwrappedIndecimalNumber = decimalNumber {
    print(unwrappedIndecimalNumber)
}else{
    print("there is nothing to show")
}







