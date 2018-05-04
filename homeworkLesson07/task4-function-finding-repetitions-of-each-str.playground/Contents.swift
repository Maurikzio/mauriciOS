import UIKit
//CREATE A FUNCTION WHICH WILL COUNT EACH OCURRENCE OF EACH CHARACTER IN A STRING

//------------1ts way
//function to just count the number of occurrences
func getNumberOfOcurrences(of value: Character, in collection: String) -> Int{
    var ocurrences: Int = 0
    for i in collection{
        if value == i {
            ocurrences += 1
        }
    }
    return ocurrences
}

//principal function
func showNumberOfOcurrences(in theString: String) -> [Character: Int]{
    let noSpacesString = theString.replacingOccurrences(of: " ", with: "").lowercased()
    var myStringDic: [Character: Int] = [:]
    var myCharSet = Set<Character>()
    for character in noSpacesString{
        myCharSet.insert(character)
    }
    for element in myCharSet{
        myStringDic[element] = getNumberOfOcurrences(of: element, in: noSpacesString)
    }
    return myStringDic
}

//additional function, just to make more readable the result
func printBetter(of collection: [Character: Int]){
    for (key, value) in collection{
        print("the character \(key) has \(value) ocurrence\( value>1 ? "s":"")")
    }
}


//testing 1st way
//let testString1: String = "Hola"
let testString2: String = "ftrrtaauuwqqoooo"

//printBetter(of: showNumberOfOcurrences(in: testString1))
printBetter(of: showNumberOfOcurrences(in: testString2))


//-----------2nd way, using a high order function 'filter'
func ocurrencesOfCharacter(in text: String) -> [Character: Int] {
    var charAndOcurrences = [(Character, Int)]()
    for character in text{
        charAndOcurrences.append((character, text.characters.filter {$0 == character}.count))
    }
    let noDuplicates = Dictionary(charAndOcurrences, uniquingKeysWith:{(first, _) in first })
    return noDuplicates
}

//testing 2nd way
ocurrencesOfCharacter(in: testString2)





//
//var myStringDic: [Character: Int] = [:]
//var myCharSet = Set<Character>()
//
//
//for i in myString{
//    print("\(i),\(type(of: i)) : \(numberOfOcurrences(of: i, in: myString)) , \(type(of: numberOfOcurrences(of: i, in: myString)))")
//}
//
//for character in myString{
//    myCharSet.insert(character)
//}
//for element in myCharSet{
//    myStringDic[element] = numberOfOcurrences(of: element, in: myString)
//}

