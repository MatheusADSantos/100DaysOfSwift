import UIKit

var name : String? = nil

if let unwrapped  = name {
    print(unwrapped.count, "letters")
} else {
    print("Missing Name")
}
//-----------------------------------------------------------------------
func great(_ name:String?) {
    guard let unwrapped = name else {
        print("You did not provide a name!!!")
        return
    }
    print("Hello\(unwrapped)")
}
great(nil)
great("Matheus")
//-----------------------------------------------------------------------
func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)
}
//-----------------------------------------------------------------------
func validate(_ passWord:Int?) -> Bool {
    guard let password = passWord else {
        print("\nYou didn't pass password, please pass some valid.")
        return false
    }
    if password == 123 {
        print("Authenticated Successfully!")
        return true
    } else {
        print("Password Incorrect!, Please try again")
    }
    return false
}
validate(nil) //false
validate(124) //false
validate(123) //true
//-----------------------------------------------------------------------
let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")

//-----------------------------------------------------------------------





var listaTelefonic = ["Matheus Santos":"9981015281", "Marcela Santos":"996566444", "Josi Dourado":"996645544", "Jaum":"999999999" ]

struct listPassword {
    let name: String
    let login: String
    let password: String
}

let searchListPhone : [String] = {
    var list = [String]()
    for i in listaTelefonic {
        if i.key.hasPrefix("M") {
            list.append(i.key + " : " + i.value)
        }
    }
    return list
}()
print(searchListPhone)







//-----------------------------------------------------------------------

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
//First form to use a throw function ----> Mais usual
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
//Second form to use a throw function ----> Alternativa
//Aqui estou transformando o valor de retorno da funcao (result) em um optional
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh!!!")
}
//Third form to use a throw function ----> Evitar
let resultBool = try! checkPassword("drowssap")
print(resultBool)

//-----------------------------------------------------------------------

struct Person {
    let id : String
    
    init?(_ id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

if let matheus = Person.init("123456789") {
    print("My ID: \(matheus.id)")
} else {
    print("Code invalid")
}

//-----------------------------------------------------------------------

struct Website {
    var url: String
    init?(url: String) {
        if url.hasPrefix("http") {
            self.url = url
        } else {
            print("Invalid website URL.")
            return nil
        }
    }
}
if let site = Website(url: "https://www.hackingwithswift.com") {
    print("\n\n\(site.url)")
}



//-----------------------------------------------------------------------

class Animal {}
class Dog : Animal {
    func makeNoise() {
        print("AuAuAu!!!")
    }
}
class Fish : Animal {}

let pets = [Fish(), Dog(), Dog(), Fish(), Dog(), Fish(), Fish()]

for pet in pets {
    if let dog = pet as? Dog {
        print(pet)
        dog.makeNoise()
    }
}

//-----------------------------------------------------------------------

class Transport { }
class Train: Transport {
    var type = "public"
}
class Car: Transport {
    var type = "private"
}
let travelPlans = [Train(), Car(), Train()]
for plan in travelPlans {
    if let train = plan as? Train {
        print("We're taking \(train.type) transport.")
    }
}

//-----------------------------------------------------------------------



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

