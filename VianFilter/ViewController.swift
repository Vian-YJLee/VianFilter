//
//  ViewController.swift
//  VianFilter
//
//  Created by LeeYongJin on 18/03/2019.
//  Copyright © 2019 vian. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imgView: UIImageView!
    
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    var captureImage: UIImage!
    var videoURL: URL!
    var flagImageSave = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnCaptureImageFromCamera(_ sender: UIButton) {
        
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
            flagImageSave = true
            
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = [kUTTypePNG as String]
            imagePicker.allowsEditing = true
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
    @IBAction func btnLoadImageFromLibrary(_ sender: UIButton) {
    }
    
    
    
    @IBAction func btnRecordVideoFromCamera(_ sender: UIButton) {
    }
    @IBAction func btnLoadVideoFromLibrary(_ sender: UIButton) {
    }
    
    func myAlert(_ title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action =  UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

