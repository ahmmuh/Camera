//
//  ViewController.swift
//  Camera
//
//  Created by Ahmed Mukhtar on 2018-04-29.
//  Copyright © 2018 Ahmed Mukhtar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var cameraLable: UIButton!
    
    @IBOutlet weak var galleryLable: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cameraLable.layer.borderWidth = 2
        galleryLable.layer.borderWidth = 2
    }




    @IBAction func gallaryButton(_ sender: Any) {
        
        
//        var imagePicker = UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
//        imagePicker.allowsEditing = true
//        self.present(imagePicker, animated: true, completion: nil)
        
        var imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion:  nil)
        
    }
    
    @IBAction func cameraButton(_ sender: Any) {
        
        var imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        imagePicker.allowsEditing = false
        self.present(imagePicker, animated: true, completion: nil)
        
        //    var imagePicker = UIImagePickerController()
        //    imagePicker.delegate = self
        //    imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        //    imagePicker.allowsEditing = false
        //    self.present(imagePicker, animated: true, completion: nil)
    }
    
}

