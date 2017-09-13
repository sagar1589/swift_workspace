//
//  ViewController.swift
//  Image Picker
//
//  Created by Sagar Bhosale on 9/13/17.
//  Copyright © 2017 sagar. All rights reserved.
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

//    @IBAction func experiment()
//    {
//        let nextVC=UIImagePickerController()
//        self.present(nextVC, animated: true){ print("VC presented!")
//        print("VC presented again!")
//        }
//    }
    
//    @IBAction func experiment()
//    {
//        let nextVC=UIActivityViewController(activityItems: [UIImage()], applicationActivities: nil)
//        self.present(nextVC, animated: true){ print("VC presented!")
//            print("VC presented again!")
//        }
//    }
    
    @IBAction func experiment()
    {
        let nextVC=UIAlertController()
        nextVC.title = "Alert"
        nextVC.message = "How are you?"
        
        let alertAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: { fgdsah in
        self.dismiss(animated: true, completion: nil)
        })
        nextVC.addAction(alertAction)
        
        self.present(nextVC, animated: true){ print("VC presented!")
            print("VC presented again!")
        }
    }

}

