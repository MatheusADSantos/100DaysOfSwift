import UIKit

//https://www.hackingwithswift.com/read/0/17/properties

struct Person {
    var clothes : String {
        willSet {
            upDateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            print("I just changed from \(oldValue) to \(clothes)")
        }
    }
    func upDateUI(msg: String) {
        print(msg)
    }
}

var taylor = Person(clothes: "T-Shirts")
taylor.clothes = "Short Skirts"



struct Person2 {
    var age:Int
    var ageInDogYears : Int {
        get {
            age * 7
        }
    }
    var ageDogYearsInHuman : Int  {
        get {
            ageInDogYears / 7
        }
        set {
            //?
        }
    }
}

var fan = Person2(age: 25)

fan.age
fan.ageInDogYears
fan.ageDogYearsInHuman



//https://www.hackingwithswift.com/read/0/18/static-properties-and-methods


struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)



//https://www.hackingwithswift.com/read/0/19/access-control
/*O controle de acesso permite especificar quais dados dentro de estruturas e classes devem ser expostos ao mundo externo e você pode escolher quatro modificadores:

Público: significa que todos podem ler e escrever a propriedade.
Interno: significa que apenas o seu código Swift pode ler e escrever a propriedade. Se você enviar seu código como uma estrutura para uso de outras pessoas, elas não poderão ler a propriedade.
Arquivo Privado: significa que apenas o código Swift no mesmo arquivo que o tipo pode ler e gravar a propriedade.
Privado: essa é a opção mais restritiva e significa que a propriedade está disponível apenas dentro de métodos que pertencem ao tipo ou a suas extensões.
Na maioria das vezes, você não precisa especificar o controle de acesso, mas às vezes deseja definir explicitamente uma propriedade para ser privada, pois impede que outras pessoas acessem diretamente. Isso é útil porque seus próprios métodos podem trabalhar com essa propriedade, mas outros não, forçando-os a percorrer seu código para executar determinadas ações.*/

class TestePublic {
    public var name : String?
    init(name : String) {
        self.name = name
    }
}

let publicTeste = TestePublic(name: "public")
publicTeste.name


class TesteInternal {
    internal var name : String?
    init(name : String) {
        self.name = name
    }
}

let internalTeste = TesteInternal(name: "internal")
internalTeste.name


class TesteFilePrivate {
    fileprivate var name : String?
    init(name : String) {
        self.name = name
    }
}

let filePrivateTeste = TesteFilePrivate(name: "filePRivate")
filePrivateTeste.name


class TestePrivate {
    private var name : String?
    init(name : String) {
        self.name = name
    }
}

let privateTeste = TestePrivate(name: "private")
//privateTeste.name // 'name' is inaccessible due to 'private' protection level



//https://www.hackingwithswift.com/read/0/20/polymorphism-and-typecasting


class Album {
    var name : String
    
    init(name : String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The Album \(name) sold lots"
    }
}

class StudioAlbum : Album {
    var studio : String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        super.getPerformance()
    }
}

class LiveAlbum : Album {
    var location : String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        super.getPerformance()
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums : [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}


for album in allAlbums {
    if let x = album as? StudioAlbum {
        print("\n Albuns gravados no studio --> ",x.name)
        print(album.getPerformance())
    }
}

for album in allAlbums {
    if let x = album as? LiveAlbum {
        print("\n\n Albuns gravados ao vivo --> ",x.name)
        print(album.getPerformance())
    }
}


for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print("*(&ˆ%",album.location)
}


let number : Int  = 5
let text = String(number)
print(text)



let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
