//
//  ViewController.swift
//  MemeMe
//
//  Created by Sagar Bhosale on 9/15/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView:UIImageView!
    @IBOutlet var albumMenuBar:UIBarButtonItem!
    @IBOutlet var cameraMenuBar:UIBarButtonItem!
    @IBOutlet var topText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cameraMenuBar.isEnabled=UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    @IBAction func chooseImage(_ sender: UIBarButtonItem)
    {
        if sender.tag == 0
        {
            let imagePickerVC=UIImagePickerController();
            imagePickerVC.delegate = self
            self.present(imagePickerVC, animated: true, completion: nil)
        }else if sender.tag == 1
        {
            let imagePickerVC=UIImagePickerController();
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .camera
            self.present(imagePickerVC, animated: true, completion: nil)
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil)
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.imageView.image=selectedImage
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }


}

