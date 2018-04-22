import UIKit
//WORKING WITH SETS

//1
//declare a set chSet with the characters a,b,c and d
let chSet = Set<String>(["a", "b", "c", "d"])

//2
//create a mutable set mchSet based on chSet
var mChSet = chSet

//3
//print how many elements has the Set mChSet
print("3. mChSet has \(mChSet.count) elements.")

//4
//insert the character 'e' in the set mChSet
mChSet.insert("e")

//5
//create srtChSet which is the sorted version of mChSet
var strChset = mChSet.sorted()

//6
//delete the element "f" from mChSet and print the deleted element
if let elementRemoved = mChSet.remove("f"){
    print("6. element removed is: \(elementRemoved)")
}else{
    print("7. mChSet doesn't have such element")
}

//7
//remove the element "d" from mChSet by its index and, and print mChSet.
let elemetToBeRemoved = "d"
let indexOfElementToBeRemoved = mChSet.index(of: elemetToBeRemoved)
if let indexOfElementToBeRemoved = indexOfElementToBeRemoved{
    mChSet.remove(at: indexOfElementToBeRemoved)
}
print(mChSet)

//8
//print the distance between the first and element "a" in mChSet
let firstElement = mChSet.startIndex
let element = "a"
if let elementA = mChSet.index(of: element){
    let distance = mChSet.distance(from: firstElement, to: elementA)
    print("8. the distance between first element \(mChSet[firstElement]) and \(element) is: \(distance)")
}

//9
//insert "a" in mChSet
let insertion = mChSet.insert("a")
if  insertion.inserted{
    print("9. insertion succesfull")
}else{
    print("9. mChSet already has such element")
}

//10
//declare aSet with elements: One, Two, Three, 1, 2 and bSet with elements: 1, 2, 3, One, Two
let aSet: Set = ["One", "Two", "Three", "1", "2"]
let bSet: Set = ["1", "2", "3", "One", "Two"]

//11
//create a set which contains the common elements between aSet and bSet
let commonElements = aSet.intersection(bSet)

//12
//crea un conjunto que contenga los elementos unicos de el set aSet con respecto al set bSet
//crear un conjunto que contenga los elementos unicos del set bSet con respoecto al set aSet
let justInAset = aSet.subtracting(bSet)
let justInBset = bSet.subtracting(aSet)

//13
//create a set which contains the no-common elements between aSet and bSet
let noCommonElements = aSet.symmetricDifference(bSet)

//14
//create a set which combines all elements of aSet and bSet
let combinedSet = aSet.union(bSet)

//15
//declare a set xSet with 2...4 elements, ySet with 1...6 elements, zSet with 3, 4, 2 and x1Set with 5, 6, 7
let xSet = Set<Int>(2...4)
let ySet = Set<Int>(1...6)
let zSet = Set<Int>([3, 4, 2])
let x1Set = Set<Int>([5, 6, 7])

//16
//Output values that determine whether the set of xSet is included in the ySet set, and whether the ySet set is included in the xSet set.
print("16. xSet is contained in ySet? -> \(xSet.isSubset(of: ySet))")
print("16. ySet is contained in xSet? -> \(ySet.isSubset(of: xSet))")

//17
//ouput si el set xSet contine al set ySet, y si el set ySet contiene al conjunto xSet
print("17. xSet cantains ySet? -> \(xSet.isSuperset(of: ySet))")
print("17. ySet cantains xSet? -> \(ySet.isSuperset(of: xSet))")

//18
//output a value that determines whether the sets xSet and zSet are equal.
let areEquals = xSet == zSet
print("18. xSet and zSet are equals? -> \(areEquals)")

//19
//determine whether the set xSet is included in the zSet set, but i snot equal to zSet
//isSubstricSubset returns false if both sets are identical
let includedButNotEqual = xSet.isStrictSubset(of: zSet)
print("19. xSet is included in zSet but are not equal? -> \(includedButNotEqual)")

//20
//determine whether the set xSet contains zSet but is not equal to zSet
//returns false if the two sets are identical
let containsButNotEqual = xSet.isStrictSuperset(of: zSet)
print("20. xSet contains zSet but is not equal to zSet? -> \(containsButNotEqual)")













