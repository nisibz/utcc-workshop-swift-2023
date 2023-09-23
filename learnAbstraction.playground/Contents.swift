import UIKit

struct Person {
    let firstname: String
    let lastname: String
    
    func sayHello(){
        print("Hello my name is \(firstname) \(lastname).")
    }
    
    func sayGoodbye(firend:Person){
        print("Goodbay \(firend.firstname).")
    }
}

let jacob = Person(firstname: "Jacob", lastname: "Edwards")
let candace = Person(firstname: "Candace", lastname: "Salinas")
let person = Person(firstname: "Nantachai", lastname: "Sangadsri")


jacob.sayHello()
person.sayHello()


jacob.sayGoodbye(firend: person)
