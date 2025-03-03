import UIKit

// --------------------------------------------------------------------------------

//https://www.hackingwithswift.com/read/0/14/enumerations
//enum WeatherType {
//    case sun, cloud, rain, wind, snow
//}
//
//func getHaterStatus(weather: WeatherType) -> String? {
//    if weather == .sun {
//        return nil
//    } else {
//        return "Hate"
//    }
//}
//getHaterStatus(weather: WeatherType.cloud)
//
//
//func getHaterStatus2(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun:
//        return nil
//    case .cloud, .wind:
//        return "dislike"
//    case .rain:
//        return "hate"
//    case .snow:
//        return "loved"
//    }
//}
//print(getHaterStatus2(weather: .cloud))

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
//Como você pode ver, os outros casos não precisam de um valor de velocidade - coloquei apenas isso wind. Agora, a verdadeira mágica: Swift nos permite adicionar condições extras ao switch/casebloco, para que um caso corresponda apenas se essas condições forem verdadeiras. Isso usa a letpalavra-chave para acessar o valor dentro de um caso, depois a wherepalavra - chave para correspondência de padrões.
//
//Aqui está a nova função:

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 25))



// --------------------------------------------------------------------------------

//https://www.hackingwithswift.com/read/0/15/structs


struct Person {
    var name : String
    var age : Int
}

let matheus = Person(name: "Matheus", age: 29)
let marcela = Person(name: "Marcela", age: 22)

print(matheus.name)
print(marcela.age)

//Em classe isso não é possivel, já com structs, cada copia é unica, nao muda a origem
var copyMatheus = matheus
print(copyMatheus)
copyMatheus.age = 30
print(copyMatheus)


enum shoes {
    case social
    case dayByDay(model: String)
}

struct Person2 {
    var name : String
    var shoes : shoes
    
    func whatIPrefer(to use: shoes) -> String {
        switch use {
        case .dayByDay(let type) where type == "Mizuno":
            return "I prefer \(type)"
        case .dayByDay:
            return "Sometimes, I like to use Asics too..."
        case .social:
            return "Nike, of course!!!"
//        default:
//            "Nothing to use"
        }
    }
}

var matheus2 = Person2(name: "Matheus", shoes: .dayByDay(model: "Mizuno"))
print(matheus2.whatIPrefer(to: shoes.dayByDay(model: "Mizuno")))
print(matheus2.whatIPrefer(to: shoes.social))



// --------------------------------------------------------------------------------

//https://www.hackingwithswift.com/read/0/16/classes

class Singer {
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("lalalala")
    }
}


let taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()


class CountrySinger: Singer {
    override func sing() {
//        super.sing()
        print("Trucks, guitars, and liquor")
    }
}

var taylor2 = CountrySinger(name: "Taylor", age: 25)
taylor2.sing()

class HeavyMetalSinger : Singer  {
    var noiseLevel : Int
    
    init(noiseLevel : Int, name : String, age : Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
//        super.sing()
        print("Grrrr ... asojduashjuashdusaodfcljnsdfila")
    }
}


let teste = HeavyMetalSinger(noiseLevel: 20, name: "Matheussss", age: 20)
print(teste.noiseLevel)
print(teste.sing())


/*Valores vs Referências
Quando você copia uma estrutura, a coisa toda é duplicada, incluindo todos os seus valores. Isso significa que alterar uma cópia de uma estrutura não altera as outras cópias - elas são todas individuais. Com as classes, cada cópia de um objeto aponta para o mesmo objeto original; portanto, se você alterar um, todos eles serão alterados. O Swift chama estruturas "tipos de valor" porque eles apenas apontam para um valor e classes "tipos de referência" porque objetos são apenas referências compartilhadas para o valor real.

Essa é uma diferença importante e significa que a escolha entre estruturas e classes é importante:

Se você deseja ter um estado compartilhado que é passado e modificado no local, você está procurando classes. Você pode passá-los para funções ou armazená-los em matrizes, modificá-los lá e ter essa alteração refletida no restante do seu programa.
Se você deseja evitar o estado compartilhado em que uma cópia não pode afetar todas as outras, está procurando estruturas. Você pode passá-los para funções ou armazená-los em matrizes, modificá-los lá e eles não serão alterados onde quer que sejam referenciados.
Se eu resumisse essa diferença fundamental entre estruturas e classes, diria o seguinte: as classes oferecem mais flexibilidade, enquanto as estruturas oferecem mais segurança. Como regra básica, você sempre deve usar estruturas até ter um motivo específico para usar classes.*/
