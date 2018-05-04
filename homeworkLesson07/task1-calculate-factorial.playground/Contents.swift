import UIKit
//FUNCTION FOR CALCULATE FACTORIAL OF NUMBER

//using recursion xD
func calculateFactorial(of number: Int) -> Int{
    if number <= 1{
        return 1
    }else{
        return number * calculateFactorial(of: number-1)
    }
}
calculateFactorial(of: 7)

//using for in if-else
/*func calcFact(_ number: Int) -> Int{
    var factorial: Int = 1
    if number <= 1{
        return factorial
    }else{
        for i in 1...number {
            factorial = factorial * i
        }
    }
    return factorial
}

calcFact(7)*/

//using a simple while
/*func calcFactorial(_ num: inout Int) -> Int{
    var factorial = 1
    while num >= 1{
        factorial = factorial * num
        num -= 1
    }
    return factorial
}
var value = 7
calcFactorial(&value)*/











