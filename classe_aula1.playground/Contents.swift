//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Pessoa{
    var cpf: String;
    var nome: String;
    var anoNasc: Int;
    
    init(cpf: String, nome: String, anoNasc: Int){
        self.cpf = cpf;
        self.nome = nome;
        self.anoNasc = anoNasc;
    }
    
    func getCpf()->String{
        return cpf;
    }
    
    func setCpf(cpf:String){
        self.cpf = cpf;
    }
    
    func geNome()->String{
        return self.nome;
    }
    
    func setNome(nome:String){
        self.nome = nome;
    }
    
    func getAnoNasc()->Int{
        return anoNasc
    }
    
    func setAnoNasc(anoNasc: Int){
        self.anoNasc = anoNasc
    }
    
    func getIdade()->Int{
        return 2016 - self.getAnoNasc()
    }
}

class Vendedor : Pessoa {
    
    var matricula: String
    
    init(nome:String, matricula:String, anoNasc:Int, cpf: String){
        self.matricula = matricula;
        super.init(cpf: cpf, nome: nome, anoNasc: anoNasc)
    }
    
    func getMatricula()->String{
        return self.matricula;
    }
    
    func setMatricula(matricula:String){
        self.matricula = matricula;
    }
    

}

protocol Calculador{
    func calculaPontosFidelidade()->Double
}

class Cliente : Pessoa, Calculador{
    var compras : [Compra]?
    var pontosFidelidade: Int
    
    init(compras: [Compra], pontosFidelidade: Int, nome:String, anoNasc:Int, cpf: String) {
        self.compras = compras;
        self.pontosFidelidade = pontosFidelidade;
        super.init(cpf: cpf, nome: nome, anoNasc: anoNasc)
    }
    
    func getCompras()->[Compra]{
        return (self.compras ?? nil)!;
    }
    
    func setCompras(compras: [Compra]){
        self.compras = compras;
    }
    
    func getPontosFidelidade()->Int{
        return self.pontosFidelidade;
    }
    
    func setPontosFidelidade(pontosFidelidade : Int){
        self.pontosFidelidade = pontosFidelidade;
    }
    
    func calculaPontosFidelidade() -> Double {
        var valorTotal : Double = 0;
        
        for c in compras{
            valorTotal = c.
        }
    }
    
}

class Compra {
    var dataCompra : NSDate;
    var valorCompra: Double;
    var vendedor : Vendedor
    
    init(dataCompra: NSDate, valorCompra: Double, vendedor: Vendedor){
        self.dataCompra = dataCompra
        self.valorCompra = valorCompra
        self.vendedor = vendedor
    }
    
    func getDataCompra()->NSDate{
        return self.dataCompra;
    }
    
    func setDataCompra(dataCompra: NSDate){
        self.dataCompra = dataCompra;
    }
    
    func getValorCompra()->Double{
        return self.valorCompra
    }
    
    func setValorCompra(valorCompra: Double){
        self.valorCompra = valorCompra;
    }
    
    func getVendedor()->Vendedor{
        return self.vendedor;
    }
    
    func setVendedor(vendedor:Vendedor){
        self.vendedor = vendedor
    }
    
}

class Date {
    
    class func from(year year:Int, month:Int, day:Int) -> NSDate {
        var c = NSDateComponents()
        c.year = year
        c.month = month
        c.day = day
        
        var gregorian = NSCalendar(identifier:NSCalendarIdentifierGregorian)
        var date = gregorian!.dateFromComponents(c)
        return date!
    }
    
    class func parse(dateStr:String, format:String="yyyy-MM-dd") -> NSDate {
        var dateFmt = NSDateFormatter()
        dateFmt.timeZone = NSTimeZone.defaultTimeZone()
        dateFmt.dateFormat = format
        return dateFmt.dateFromString(dateStr)!
    }
}


var data = Date.parse("2016-05-30");
var vendedor1 = Vendedor(nome: "Rodrigo",matricula: "123",anoNasc: 1988,cpf: "02289676195")
var compra = Compra(dataCompra: data, valorCompra: 1000, vendedor: vendedor1)
var compra2 = Compra(dataCompra: data, valorCompra: 1000, vendedor: vendedor1)
var compras : [Compra] = [compra,compra2]
var cliente = Cliente(compras: compras, pontosFidelidade: 0, nome: "José", anoNasc: 1988, cpf: "00000000000")

print(cliente.pontosFidelidade)






