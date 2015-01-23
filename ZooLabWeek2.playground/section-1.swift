// Playground - noun: a place where people can play

import UIKit

class Zoo {
    let animal: [String] = ["Panda", "monkey", "Parakeet"]
    let foot: [String] = ["Bamboo", "banana", "Worm"]
    let animal1:String
    
    init(animal: String){
        
        self.animal1 = animal
    }
    func Zoofunny() -> String {
        var anser: String = ""
        for(var i=0; i < animal.count ; i++){
            if(animal[i] == animal1){
                anser = foot[i];
            }
        }
        return anser
    }
    
}
let Zoo1 = Zoo(animal: "Panda")
Zoo1.Zoofunny()