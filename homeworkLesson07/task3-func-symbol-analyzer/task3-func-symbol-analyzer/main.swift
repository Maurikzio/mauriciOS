//
//  main.swift
//  task3-func-symbol-analyzer
//
//  Created by Mauricio on 5/2/18.
//  Copyright © 2018 JMMG. All rights reserved.
//

import Foundation

//function to just get the unicode of a symbol
func getUnicodeScalar(of mySymbol: Character) -> UInt32{
    let scalar = mySymbol.unicodeScalars
    return scalar[scalar.startIndex].value
}
//print(getUnicodeScalar(of: "1"))

//function using switch statement
/*
func symbolAnalyzer(of aSymbol: Character){
    var message: String = ""
    switch getUnicodeScalar(of: aSymbol) {
    case 48...57:
        message = "is a number"
        break
    case 65...90:
        message = "is a latin capital letter"
        break
    case 97...122:
        message = "is a latin small letter"
        break
    case 1024...1071:
        message = "is a cyrillic capital letter"
        break
    case 1072...1103:
        message = "is a cyrillic small letter"
        break
    default:
        message = "was not found, try with a number or letter"
    }
    print("\(aSymbol) \(message)")
}
 */

//function usinf if/else-if statements and a ternary operator
func symbolAnalyzer(of aSymbol: Character){
    var message: String = ""
    if (48...57).contains(getUnicodeScalar(of: aSymbol)){
        message = "is a number"
    }else if(65...122).contains(getUnicodeScalar(of: aSymbol)){
        message = "is a latin "
        message += (65...90).contains(getUnicodeScalar(of: aSymbol)) ? "capital letter" : "small letter"
    }else if(1024...1103).contains(getUnicodeScalar(of: aSymbol)){
        message = "is a cyrillic "
        message += (1024...1071).contains(getUnicodeScalar(of: aSymbol)) ? "capital letter" : "small letter"
    }else{
        message = "symbol was not found"
    }
    print(aSymbol, message)
}


//let symbol1: Character = "Я"
//let symbol1: Character = "я"
//let symbol1: Character = "A"
//let symbol1: Character = "a"
let symbol1: Character = "1"
symbolAnalyzer(of: symbol1)







//NOTES

/*#1
 for u in value.utf16 {
 // This value is a UInt16.
 print(u)
 }*/

/*#2
 let dogString = "Dog‼🐶"
 
 for scalar in dogString.unicodeScalars {
 print("\(scalar.value) ", terminator: "")
 }
 print("")*/

/*#3
 let ch: Character = "A"
 let s = String(ch).unicodeScalars
 s[s.startIndex].value */


