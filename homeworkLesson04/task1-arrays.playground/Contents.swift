import UIKit
//WORKING WITH ARRAYS

//1
// array fibArray with the first 10 fibonacci numbers
var current = -1, next = 1, extra = 0
var fibArray: [Int] = []
for _ in 0..<10{
    extra = current + next
    current = next
    next = extra
    fibArray.append(next)
}
fibArray
fibArray.count

//2
//create array, with alements that are at reverse of fibArray's array
var revArray: [Int] = []
for item in fibArray.reversed() {
    revArray.append(item)
}
revArray

//3
//array snglArray , of prime numbers less than 100
var snglArray: [Int] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

//4
//print how many elements are in snlgArray
print("snglArray has : \(snglArray.count) elements.")

//5
//print the 10th element
print("snglArray's 10th element is: \(snglArray[9])")

//6
//print the sub-array of snglArray from 15th element to 20th element
print(snglArray[9...14])

//7
//create an array rptArray with 10 elements which are equal to the 10th element in snglArray
var rptArray = Array(repeating: snglArray[9], count: 10)

//8
//create array oddArray with odd numbers not less than 0 an not higher than 10
var oddArray = [1, 3, 5, 7, 9]

//9
//add to array oddArray, the number 11
oddArray.append(11)

//10
//add to array oddArray the numbers 15, 17 ,19 in subscipt syntax
oddArray += [15, 17, 19]

//11
//insert in the array oddArray the number 13 in the position between 11 and 15 number
oddArray.insert(13, at: 6)

//12
//delete elements of the array oddArray, startgin from 5th element to 8th(not included)
oddArray.removeSubrange(4..<8)

//13
//delete the last elemet of the array oddArray and print it
if let lastElement = oddArray.last{
    print(lastElement)
}

//14
//modify the elements of the array oddArray from 2nd to the last one with 2, 3, 4
//oddArray[1...] = [2, 3, 4]
oddArray.replaceSubrange(1..., with: [2, 3, 4])
oddArray

//15
//delete the element of the array oddArray which is equal to 3

if let index = oddArray.index(of: 3){
    oddArray.remove(at: index)
}
oddArray

//16
//check if the array oddArray contains the value 3
oddArray.contains(3)

//17
//print oddArray in a line
print(oddArray)




















