// Playground - noun: a place where people can play

import UIKit

class Zoozoo{
    var food: [String:String] = ["panda" : "bamboo", "monkey" : "banana", "kangaroo" : "pupa"]
    let food:String
    init(animal:String){
        self.food = animal
    }
    
    func animal1() ->String {
        var food1:String = ""
        for (key,value) in Nfood{
            if(key == food){
                food1=value
            }
        }
        return food1
    }
    
    func Add(animalAdd:String, foodAdd:String){
        Nfood[animalAdd] = food1Add
        
    }
    
    func Del(animaldel:String){
        Nfood[animaldel] = nil
        
    }
    
    func Edit(fruitedit:String, coloredit:String){
        NFruit[fruitedit]=coloredit
    }
}

let colorF = Fruit(Namefruit : "Roseapple")
colorF.Colorfruit()
colorF.Add("Mango", colorAdd: "yellow")
colorF.Del("Grapes")
colorF.Edit("Orange", coloredit: "green")