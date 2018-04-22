import UIKit

//WORKING WITH DICTIONARIES

//1
//define a dictionary nDict, whose keys are numeric of numbers 1 to 5, and the corresponding values are the sting
//representation of them (1: "One")
let nDict: [Int: String] = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]

//2
//display the value of nDict with key 3
if let thirdElement  = nDict[3] {
    print("value of key 3: \(thirdElement)")
}

//3
//output the value of nDict under the key by index 4
let index = 4
if let index4 = nDict.index(forKey: index){
    print("value for index 4 is:  \(nDict[index4].value)")
}

//4
//create a mutable mNDict dictionary based on nDict
var mNDict = nDict

//5
//add elements 6:Six and 7:Seven to mNDict
mNDict[6] = "Seven"
mNDict[7] = "Six"

//6
//update the values of mNDict items without using subscript[] to: 6:Six, 7:Seven, 8:Eight
if let _ = mNDict[6],
    let _ = mNDict[7]{
    mNDict.updateValue("Six", forKey: 6)
    mNDict.updateValue("Seven", forKey: 7)
    if let _ = mNDict.updateValue("Eigth", forKey: 8){}
}

//7
//delete the element with the key 5 in mNDic
mNDict.removeValue(forKey: 5)

//8
//delete the element by the index of key 4 in mNDic
if let index = mNDict.index(forKey: 4){
    mNDict.remove(at: index)
}

mNDict

//9
//define and display de distance between pairs 1:One and 7:Seven in mNDict
var distance: Int
if let index1 = mNDict.index(forKey: 1),
    let index7 = mNDict.index(forKey: 7){
    if index1 > index7 {
        distance = mNDict.distance(from: index7, to: index1)
    }else{
        distance = mNDict.distance(from: index1, to: index7)
    }
    mNDict
    print("the distance between 1 and 7 is: \(distance)")
}

//10
//creates an array mNDictKeys, which contains are all the keys  of mNDict
let mNDictKeys = Array(mNDict.keys)

//11
//create an aray mNDictValues of which elements are all the values of mNDict
let mNDictValues = Array(mNDict.values)

//12
//Display the mNDict dictionary inline
print(mNDict)




    



















