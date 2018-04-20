//: Playground - noun: a place where people can play

import UIKit

//TASK NUMBER 3
//working with strings

var myLine = "Hello World. This is Swift programming language"
print(myLine)

//1
//determine and display the lenght of the line
var lengthOfLine = myLine.count
print("1. the lenght of the line is: \(lengthOfLine)")

//2, replace each ocurrence of the character 'i' with 'u'
myLine = myLine.replacingOccurrences(of: "i", with: "u")
print("2. i changed with u: \(myLine)")

//3, delete 4th, 7th and 10th symbol in the line
myLine.remove(at: myLine.index(myLine.startIndex, offsetBy: 3))
myLine.remove(at: myLine.index(myLine.startIndex, offsetBy: 6))
myLine.remove(at: myLine.index(myLine.startIndex, offsetBy: 9))
print("3 4th, 7th and 10th character removed:  \(myLine)")

// //4 add "(modified)" to the line
//var modified = "(modified)"
myLine.append("(modified)")
print("4. \(myLine)")

//5 check if the line is empty
print("5. is the line empty: \(myLine.isEmpty)")

//6 add . to the final
//myLine.insert("hu", at: myLine.endIndex)
myLine.insert(".", at: myLine.endIndex)
print("6. \(myLine)")

// //7, if the line estarts with the substring Hello
// let firstSpace = myLine.index(of: " ")!
// let firstWord = myLine[..<firstSpace]
// print(firstWord == "Hello")
print("7. Is line starting  with 'Hello' : \(myLine.hasPrefix("Hello"))")

//8, check if the line ends with "world"
print("8. Is the line ending with 'world.': \(myLine.hasSuffix("world."))")

//9, insert '-' after the 10th symbol
myLine.insert("-", at: myLine.index(myLine.startIndex, offsetBy: 10))
print("9. Inserting '-' after 10th character: \(myLine)")

//10. replace the sequence 'Thus us' with 'It is'

if let rangeOfMySubstring = myLine.range(of: "Thus us"){
    myLine.replaceSubrange(rangeOfMySubstring, with: "It is")
    print("10. \(myLine)")
}else{
    print("sequence hasnt been found")
}

//11. print the 10th and 15th symbols in the line
let theStartIndex = myLine.startIndex
let charIn10thIndex = myLine.index(theStartIndex, offsetBy: 9)
let charIn15thIndex = myLine.index(theStartIndex, offsetBy: 14)
print("11. the 10th symbol is: \(myLine[charIn10thIndex])")
print("11. the 15th symbol is: \(myLine[charIn15thIndex])")

//12. print a substring that is within the 10th(included) and 15(not included)
let myCustomSubstring = myLine[charIn10thIndex..<charIn15thIndex]
print("12. The substring between 10(included) and 15(not included) is: \(myCustomSubstring)")





