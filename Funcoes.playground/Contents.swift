//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func soma(a a:Int, b:Int) ->Int{
    return a + b
}

func soma(a:Int, b:Int, c: Int) ->Int{
    return a + b + c;
}


soma(a: 5, b: 5)


func somaProduto(a: Int, b: Int ..., c: Int) -> Int{
    var soma: Int = 0;
    
    for i in b{
        soma = soma + i;
    }
    
    soma = (soma * c) - a;
    
    return soma;
}

somaProduto(1,b: 1,2,3,c: 2);

func proximo(inout a: Int)->String{
    a++;
    return a.description;
}

var testeInOut = 5
print(proximo(&testeInOut) + " = " + testeInOut.description)

func retornaMinMax(a: Int ...)->(Int,Int){
    return (a.minElement()!,a.maxElement()!)
}

retornaMinMax(1,2,3,4,5,6,7,8)

func funcaoOpt(a: Int) -> Int?{
    if(a == 1){
        return 1;
    } else {
        return nil
    }
}

print(funcaoOpt(2) ?? "Nao tem valor")


enum ExcecoesDivisao: ErrorType{
    case DivisaoPorZero;
}

func divisao(a: Double, b:Double) throws -> Double{
    guard b != 0 else {
        throw ExcecoesDivisao.DivisaoPorZero;
    }
    
    return a / b;
}

do{
    try divisao(10, b: 2)
} catch ExcecoesDivisao.DivisaoPorZero{
    print("ERRO: Divisão por zero huehuheuhe")
}

