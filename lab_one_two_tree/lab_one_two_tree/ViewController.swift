//
//  ViewController.swift
//  lab_one_two_tree
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var x1=0
    var x2=0
    var x3=0
    
    @IBAction func one(sender: AnyObject) {
        x1 += 1
        label1.text = String(x1)
       
    }
    @IBAction func two(sender: AnyObject) {
        
        x2 += 2
        label2.text = String(x2)

    }
    
    @IBAction func tree(sender: AnyObject) {
        
        x3 += 3
        label3.text = String(x3)

    }
    
    @IBAction func Reset(sender: AnyObject) {
        label1.text = "0" ; x1=0
        label2.text = "0" ; x2=0
        label3.text = "0" ; x3=0
       

    }
    

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
}

