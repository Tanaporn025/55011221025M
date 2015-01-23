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
    func returnPossibleTips() -> [Int: Double]{
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var numberOfItems = possibleTipsInferred.count
         //2
        
        var retvat = [Int : Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retvat[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retvat
    }

}
//6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()