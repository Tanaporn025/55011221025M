//
//  ViewController.swift
//  WirelessLab7
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func animate(sender: AnyObject) {
        
        let numberOfFish = Int(self.numberOfFishSlider.value)
        
        for loopNumber in 1...numberOfFish  {
            
            
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            
            
            
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            
            let fish = UIImageView()
            fish.image = UIImage(named: "3.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    
                    fish.removeFromSuperview()
            })
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}