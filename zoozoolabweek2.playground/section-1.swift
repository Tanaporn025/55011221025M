// Playground - noun: a place where people can play

import UIKit


import UIKit

class Zoo {
    let animal: [String: String] = ["Panda":"Bamboo", "monkey":"banana", "Parakeet":"Worm"]
    // let foot: [String] = ["Bamboo", "banana", "Worm"]
    let animal1:String
    
    init(animal: String){
        
        self.animal1 = animal
    }
    func Zoofunny() -> String {
        var anser: String = ""
        for(key,value) in animal {
            if(key==animal1){
                anser = value
            }
        }
        return anser
    }
    
}
let Zoo1 = Zoo(animal: "monkey")
Zoo1.Zoofunny()