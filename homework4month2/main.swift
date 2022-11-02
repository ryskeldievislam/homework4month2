//
//  main.swift
//  homework4month2
//
//  Created by Mac on 30/10/22.
//




import Foundation


protocol iBuyIt {
    func buy1()
    func change(money:Int)
}
class Product {
    var name :String
    var zena: Int
    var kolvo: Int
    
    init(name: String, zena: Int, kolvo: Int){
        self.name = name
        self.zena = zena
        self.kolvo = kolvo
    }
}
class Pokupatel:iBuyIt {
    var name:String
    var products:[Product] = []
    var totalCost: Int = 0
    
    init(name: String){
        self.name = name
    }
    func addToBag(product:Product){
        products.append(product)
    }
func buy1(){
    print("ПРОДУКТ:ЦЕНА,КОЛИЧЕСТВО")
    for i in 0..<products.count{
        totalCost+=products[i].zena
        print("\(products[i].name):\(products[i].zena),\(products[i].kolvo)")}
    print("ИТОГОВАЯ СУММА:\(totalCost)")
}
    func change(money:Int) {
            if money > totalCost{
                print("СДАЧА:\(money-totalCost) СОМ")
            }else if money == totalCost{
                print("БЕЗ СДАЧИ")
            }else{
                print("ВАМ НЕ ХВАТАЕТ \(totalCost-money) СОМ")
            }
        }
    }

var cola = Product(name: "cola", zena: 70, kolvo: 20)
var limon = Product(name: "limon", zena: 50, kolvo: 100)
var client = Pokupatel(name: "Islam")
client.addToBag(product: cola)
client.addToBag(product: limon)
client.buy1()
client.change(money: 160)
