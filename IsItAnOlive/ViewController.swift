//
//  ViewController.swift
//  IsItAnOlive
//
//  Created by Renan Avrahami on 11/4/17.
//  Copyright © 2017 Renan Avrahami. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var capturedImage: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let userPickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
        capturedImage.image =  userPickedImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    
}

