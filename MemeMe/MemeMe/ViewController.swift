//
//  ViewController.swift
//  MemeMe
//
//  Created by Sagar Bhosale on 9/15/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var toolBar: UIToolbar!
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var albumMenuBar:UIBarButtonItem!
    @IBOutlet var cameraMenuBar:UIBarButtonItem!
    @IBOutlet var shareMenuBar:UIBarButtonItem!
    @IBOutlet var topText: UITextField!
    @IBOutlet var bottomText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textAttributes:[String:Any]=[
            NSStrokeColorAttributeName:UIColor.black,
            NSForegroundColorAttributeName:UIColor.white,
            NSFontAttributeName:UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
            NSStrokeWidthAttributeName:5,        ]
        
        topText.defaultTextAttributes=textAttributes
        topText.textAlignment = .center
        bottomText.defaultTextAttributes=textAttributes
        bottomText.textAlignment = .center
        
        self.cameraMenuBar.isEnabled=UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //shareMenuBar.isEnabled=false;
        self.subscribeToKeyboardNotification()
        self.subscribeToKeyboardHideNotification()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        unSubscribeToKeyboardNotification()
        unSubscribeToKeyboardHideNotification()
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
        self.shareMenuBar.isEnabled=true
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func keyboardWillShow(_ notification:Notification)
    {
        if notification.name == .UIKeyboardWillShow
        {
            self.view.frame.origin.y -= getKeyboardHeight(notification)
        }else
        {
            self.view.frame.origin.y += getKeyboardHeight(notification)
        }
        
    }
    
    func getKeyboardHeight(_ notification: Notification) -> CGFloat
    {
        let userInfo = notification.userInfo
        let keyboardSize = userInfo?[UIKeyboardFrameEndUserInfoKey] as! NSValue
        return keyboardSize.cgRectValue.height
    }
    
    func subscribeToKeyboardNotification()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name:.UIKeyboardWillShow, object: nil)
    }
    
    func unSubscribeToKeyboardNotification()
    {
        NotificationCenter.default.removeObserver(self, name:.UIKeyboardWillShow, object: nil)
    }
    
    func subscribeToKeyboardHideNotification()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name:.UIKeyboardWillHide, object: nil)
    }
    
    func unSubscribeToKeyboardHideNotification()
    {
        NotificationCenter.default.removeObserver(self, name:.UIKeyboardWillHide, object: nil)
    }
    
    func save()
    {
        let meme = Meme(topText: topText.text!, bottomText: bottomText.text!, image: imageView.image!, memedImage: generateMemedImage())
        UIImageWriteToSavedPhotosAlbum(meme.memedImage, nil, nil, nil)
    }
    
    func generateMemedImage() -> UIImage!
    {
        toolBar.isHidden=true;
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: view.frame, afterScreenUpdates: true)
        let memedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        toolBar.isHidden=false;
        return memedImage
    }
    
    @IBAction func share()
    {
        let memedImage = generateMemedImage()
        let activityVC = UIActivityViewController(activityItems: [memedImage!], applicationActivities: nil)
        activityVC.completionWithItemsHandler = {[weak self](activityType, flag, info, error) in
            self!.save()
            print("Image saved")
        }
        self.present(activityVC, animated: true, completion: nil)
        
    }

}

struct Meme
{
    var topText:String!
    var bottomText: String!
    var image:UIImage!
    var memedImage:UIImage!
    
}

