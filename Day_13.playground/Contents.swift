import UIKit

var name : String
name = "Matheus"
print(name)

//------------------------------------------------------------------------------------------

//var longitude : [Float]
var longitude : [Double]
longitude = [-86.783333, -186.783333, -1286.783333, -12386.783333, -123486.783333, -1234586.783333, -12345686.783333, -123456786.783333, -1234567886.783333]
for i in longitude {
    print(i)
}

//------------------------------------------------------------------------------------------

var songs : [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
type(of: songs)

//------------------------------------------------------------------------------------------

var songs2 : [String] = []
var songs3 = [String]()

//------------------------------------------------------------------------------------------

var songsA = ["Shake it Off", "You Belong with Me", "Love Story"]
var songsB = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]

var both = songsA + songsB
print(both)

both += ["Everything has Changed"]
print(both)

//------------------------------------------------------------------------------------------

for i in 1...10 {
    print("\(i) x 10 = \(i*10)")
}

for _ in 0..<5 {
    print("Hello")
}

//------------------------------------------------------------------------------------------

var contador = 0

while true {
    contador += 1
    if contador == 1 {
        print("\(contador) pessoa")
    } else {
        print("\(contador) pessoas")
    }
    
    if contador == 500 { break }
    
}

//var dias : Double = 365
//var diaAtual : Double = 1
//var capitalInicial : Double = 200
//let jurosDia : Double = (5/100/12/30)
//
//let casasdecimais = 2
//let formato = String(casasdecimais)+"f"
//var x = Double(String(format: "%."+formato, (capitalInicial*jurosDia)))
//
//while true {
//
//
//
//    if diaAtual == 1 {
//        print("\n\n\n\n\n\n\n\n Começando o calculo ...")
//
//        diaAtual += 1
//        x! += x!
//        capitalInicial += x!
//
//        print("R$", x!, " de juros no \(diaAtual) dia")
//        print(capitalInicial)
//
//    } else {
//        diaAtual += 1
//        x! += x!
//        capitalInicial += x!
//
//        print("R$", x!, " de juros no \(diaAtual) dia")
//        print(capitalInicial)
//
//    }
////    diaAtual += 1
////    x! += x!
////    capitalInicial += x!
//
//    if dias == diaAtual { break }
//}


//------------------------------------------------------------------------------------------


var dias = 365
var taxaDeJuros = (5/100/12/30)
var 








//------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------

