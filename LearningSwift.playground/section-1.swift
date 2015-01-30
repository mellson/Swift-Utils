// Playground - noun: a place where people can play

import Cocoa
let abm: String? = "Anders Bech Mellson"

func say1(str: String) {
    println(str)
}
say1(abm!)

func say2(externalName internalName: String) {
    println(internalName)
}
say2(externalName: abm!)

func say3(#str: String) {
    println(str)
}
say3(str: abm!)

// enums are types
enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

// Classes are reference types (eg only 1 copy and passed by ref)

// Structure are value types

struct Person {
    let firstName: String
    let lastName: String
    let birthDay: Day
}

let ellen = Person(firstName: "Ellen", lastName: "Mellson", birthDay: Day.Monday)

let numbers = [1,2,3]
let k = numbers + [1,2,3]

let h = (1,"hej")

// Protocols = interfaces, classes can implement protocols

// Stored Properties and computed properties
// Lazy init
// Property notifiers, be notified when things change (willSet and didSet)

struct NotifiyTest {
    var name: String {
        didSet {
            println("Changed \(oldValue) to \(name)")
        }
    }
}

var nt = NotifiyTest(name: "Anders")
nt.name = "Ditte"