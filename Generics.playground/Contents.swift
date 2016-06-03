//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func trocaValores<P>(inout a: P, inout _ b: P){
    let temp = a
    a = b;
    b = temp;
}

var i1:Bool = true, i2:Bool = false;
trocaValores(&i1, &i2)

var str1:String = "sim", str2:String = "não"
trocaValores(&str1, &str2)


