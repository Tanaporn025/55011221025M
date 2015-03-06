//
//  data.swift
//  Informatics
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData () ->Array<balloon>{
        var tempArray = Array<balloon>()
        var b1 = balloon(bImage: UIImage(named: "pooh1.png"), bName: "pooh1")
        tempArray.append(b1)
        
        var b2 = balloon(bImage: UIImage(named: "pooh2.png"), bName: "pooh2")
        tempArray.append(b2)
        
        var b3 = balloon(bImage: UIImage(named: "pooh3.png"), bName: "pooh3")
        tempArray.append(b3)
        
        var b4 = balloon(bImage: UIImage(named: "pooh4.png"), bName: "pooh4")
        tempArray.append(b4)
        
        var b5 = balloon(bImage: UIImage(named: "pooh5.png"), bName: "pooh5")
        tempArray.append(b5)
        
        var b6 = balloon(bImage: UIImage(named: "pooh6.png"), bName: "pooh6")
        tempArray.append(b6)
        
        var b7 = balloon(bImage: UIImage(named: "pooh7.png"), bName: "pooh7")
        tempArray.append(b7)
        
        return tempArray
        
    }
    
}
