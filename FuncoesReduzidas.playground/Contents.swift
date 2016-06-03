//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func opera(a:Int, b:Int, operador:(Int, Int) ->Int) -> Int{
    return operador(a,b)
}

func soma (a:Int, b:Int)->Int{
    return a+b
}

opera(5,b: 5,operador: soma)

opera(2, b:3, operador: {a, b in a*b})
opera(2, b:3, operador: {$0 + $1})
opera(2, b:3, operador: *)


func logica(a:Int, b:Int, operadorLogico: (Int, Int) -> Bool) ->Bool{
    return operadorLogico(a,b)
}

logica(1, b: 1, operadorLogico: {a, b in a != b})
logica(1, b: 1, operadorLogico: {$0 != $1})
logica(1, b: 1, operadorLogico: !=)



func geradorDePotencias(base: Double) -> ((expoente:Double) -> Double){
    func saida(expoente: Double)->Double{
        return pow(base,expoente)
    }
    
    return saida
}

var pot = geradorDePotencias(2.0)
pot(expoente: 3.0)

