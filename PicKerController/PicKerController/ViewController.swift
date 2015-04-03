//
//  ViewController.swift
//  PicKerController
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController,UINavigationControllerDelegate ,UIImagePickerControllerDelegate {
    
    var imagePicker:UIImagePickerController!
    var newMeDia:Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var imageView: UIImageView!

    @IBAction func takePhoto(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMeDia = true
        
    }
    
    @IBAction func library(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        newMeDia = false
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
        let mediaType = info[UIImagePickerControllerMediaType] as NSString
        if (mediaType.isEqualToString(kUTTypeImage as NSString)) {
            let image = info[UIImagePickerControllerOriginalImage] as UIImage
            imageView.image = image

            if (newMeDia == true){
            UIImageWriteToSavedPhotosAlbum(image, self, "image : didFinishSavingWithError:", nil)
            }
        }
      
        func  image(image: UIImage,didFinisSavingWithError error: NSErrorPointer, contextInfo:UnsafePointer<Void>) {
            if(error != nil ){
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.Alert)
                
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
                
                alert.addAction(cancelAction)
                self.presentViewController(alert, animated: true, completion: nil)
                
            }
        }
        
    }
}

