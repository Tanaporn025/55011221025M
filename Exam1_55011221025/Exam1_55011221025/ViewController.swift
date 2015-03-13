//
//  ViewController.swift
//  Exam1_55011221025
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBOutlet weak var Subject: UITextField!

    @IBOutlet weak var Midtrem: UITextField!
    
    @IBOutlet weak var Work: UITextField!
    
    @IBOutlet weak var Final: UITextField!
    
    @IBOutlet weak var sum: UILabel!
    
    @IBOutlet weak var grade: UILabel!

    @IBAction func click(sender: AnyObject) {
       let a1:Int? = Midtrem.text.toInt()
        let b1 = Double ((Midtrem.text as NSString).doubleValue)
        
        let c1:Int? = Work.text.toInt()
        let d1 = Double ((Work.text as NSString).doubleValue)
        
        let e1:Int? = Final.text.toInt()
        let f1 = Double ((Final.text as NSString).doubleValue)
        
        var sum02 :Double = b1+d1+f1
      sum.text = "\(sum02)"
        
        if(sum02 >= 80){
            grade.text >= "A" }
            
        else if(sum02 >= 74){
            grade.text = "B+" }
            
        else if(sum02 >= 68) {
            grade.text = "B" }
            
        else if(sum02 >= 62){
            grade.text = "C+" }
            
        else if(sum02 >= 56){
            grade.text = "C" }
            
        else if(sum02 >= 50){
            grade.text = "D+" }
        
        else if(sum02 >= 44){
            grade.text = "D" }
            
        else {
            grade.text = "F" }

    }
    
}


