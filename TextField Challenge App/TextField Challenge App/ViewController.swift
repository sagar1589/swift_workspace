//
//  ViewController.swift
//  TextField Challenge App
//
//  Created by Sagar Bhosale on 9/14/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    let firstDelegate = FirstDelegate()
    let secondDelegate = SecondDelegate()
    
    
    
    @IBOutlet var first:UITextField!
    @IBOutlet var second:UITextField!
    @IBOutlet var third:UITextField!
    @IBOutlet var textSwitch:UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        first.delegate=firstDelegate
        second.delegate=secondDelegate
        third.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return textSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func toggleSwitch()
    {
    
        if !textSwitch.isOn {
            third.resignFirstResponder()
        }
    }

}

