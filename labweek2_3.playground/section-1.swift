// Playground - noun: a place where people can play

import UIKit

//2
class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    //3
    init(total:Double,taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct+1)
    }
    //4
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
        //1
        func returnPossibleTips() -> [Int:Double]{
            
            let possibleTipsTipsInferred = [0.15, 0.18, 0.20]
            let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
            
            //2
            var retval = Dictionary<Int, Double>()
            for possibleTip in possibleTipsTipsInferred {
                let intPct = Int(possibleTip*100)
                //3
                retval[intPct] = calcTipWithTipPct(possibleTip)
                
            }
            return retval
        }
        
}
