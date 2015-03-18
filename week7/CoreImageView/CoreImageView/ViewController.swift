//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    

    @IBOutlet weak var UIImageCiew: UIImageView!
    var context:CIContext!
    var filter:CIFilter!
    var BeginImage:CIImage!
    var orientation:UIImageOrientation! = .Up
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = NSBundle.mainBundle().URLForResource("image1", withExtension: "png")
        BeginImage = CIImage(contentsOfURL: fileURL)

        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(BeginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent ())
        
        let newImage = UIImage(CGImage: cgimg)
        self.UIImageCiew.image = newImage
        self.logAllFilters()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }

    @IBOutlet weak var amountSlider: UISlider!
    
    @IBAction func mountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(BeginImage, withAmount:sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage : cgimg, scale:1 , orientation:orientation)
        self.UIImageCiew.image = newImage
    }
    
    
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickeyC = UIImagePickerController()
        pickeyC.delegate=self
        self.presentViewController(pickeyC, animated: true, completion: nil)
    }
 
    @IBAction func savePhoto(sender: AnyObject) {
        let imageToSave = filter.outputImage
        
        let sofwareContext = CIContext(options: [kCIContextUseSoftwareRenderer:true])
        
        let cgimg = sofwareContext.createCGImage(imageToSave, fromRect: imageToSave.extent())
        
        let library = ALAssetsLibrary()
        
        library.writeImageToSavedPhotosAlbum(cgimg, metadata: imageToSave.properties(), completionBlock: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        self.dismissViewControllerAnimated(true, completion: nil)
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        BeginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(BeginImage, forKey: kCIInputImageKey)
        self.mountSliderValueChanged(amountSlider)
        
    }
    func logAllFilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        for filterName:AnyObject in properties {
            let fltr = CIFilter(name:filterName as String)
            println(fltr.attributes())
        }
    }
    func oldPhoto(img: CIImage,withAmount intensity:Float) ->CIImage{
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name: "CIRandomGenerator")
        
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        let croppedImage = lighten.outputImage.imageByCroppingToRect(BeginImage.extent())
        
        let composite = CIFilter(name: "CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        
        return vignette.outputImage
        
    }
    
       
    
}

