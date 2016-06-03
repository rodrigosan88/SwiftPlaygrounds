//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum PontosCardeais{
    case Norte, Sul, Leste, Oeste
}

var ponto: PontosCardeais = .Sul
// Exautivo, necessita da clausula default
// Não tem break
switch(ponto){
    case PontosCardeais.Norte:
        print("NORTE")
    case PontosCardeais.Sul:
        print("SUL")
    case PontosCardeais.Leste:
        print("LESTE")
    case PontosCardeais.Oeste:
        print("OESTE")
    default :
        print("NADA")
}