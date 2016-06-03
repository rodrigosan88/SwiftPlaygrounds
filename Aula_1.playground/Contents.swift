//: Playground - noun: a place where people can play

import UIKit

// Variável com tipagem implicita
var str = "Hello, playground"

// Variável com tipagem explicita
var nome: String = "Rodrigo "

// Variável opcional, pode ou não ser utilizada na aplicação
var varOpt: Int?

//Constante
let sobrenome = "Santos";

nome = nome + sobrenome;

// Variável calculada através de função inline
var idade: Int = {
    return 28;
}()

var valor: Int = 2 {
    didSet(oldValor){
        print("Valor velho: \(oldValor) e valor novo: \(valor)");
        
    }

    willSet(newValor){
        print("Valor velho \(valor) e valor novo: \(newValor)")
    }
}

varOpt = 2

if (varOpt != nil){
    print(varOpt)
}else{
    print("Não tem valor")
}

print(varOpt?.successor() ?? "Não tem valor")

valor = 5
valor = 3

// Arrays
var meuArray: Array = [3,1,2]
var outroArray: [Int] = [4,5,6]
var maisUmArray = [7,8,9]

//tupla

var tupla: (Int, String, Bool) = (1, "Rodrigo", true)
var dict: [String: AnyObject] = ["Rodrigo" : 1, "Rodrigo_" : 1]

// Funções como variáveis
var guardaFunction: (Int, Int) -> Int;

func soma(a:Int, b:Int)->Int{
    return a + b;
}

guardaFunction = soma;
print(guardaFunction(5,10));