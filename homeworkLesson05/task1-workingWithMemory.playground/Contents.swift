import UIKit

//WORKING WITH MEMORY
class Person{
    let name: String
    var child: Son?
    init(name: String) {
        self.name = name
        print("Hello \(self.name)")
    }
    deinit { print("Goodbye \(name)") }
}

class Son{
    let name: String
    weak var parent: Person?  //changing the reference from strong to weak
    init(name: String) {
        self.name = name
        print("Hello \(name)")
    }
    deinit { print("Goodbye \(name)") }
}
//do{
//    var person1 = Person(name: "Mauricio") // console -> goodbye Mauricio
//}

//creating instances for Person and for Son
var person1: Person?
var son1: Son?

person1 = Person(name: "Mauricio")
son1 = Son(name: "Pepito")

//linking the 2 instances
person1?.child = son1
son1?.parent = person1

//deallocating the instances person1 and son1
person1 = nil
son1 = nil






