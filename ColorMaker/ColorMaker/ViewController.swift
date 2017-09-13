//
//  ViewController.swift
//  ColorMaker
//
//  Created by Sagar Bhosale on 9/12/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//
//    @IBOutlet var redSwitch:UISwitch!
//    @IBOutlet var greenSwitch:UISwitch!
//    @IBOutlet var blueSwitch:UISwitch!
    
    @IBOutlet var redSwitch:UISlider!
    @IBOutlet var greenSwitch:UISlider!
    @IBOutlet var blueSwitch:UISlider!
    
    @IBOutlet var viewBox:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func changeColor(_ sender: Any) {
        
//        let r:CGFloat=redSwitch.isOn ? 1 : 0
//        let g:CGFloat=greenSwitch.isOn ? 1:0
//        let b:CGFloat=blueSwitch.isOn ? 1:0
        
        let r = CGFloat(redSwitch.value)
        let g = CGFloat(greenSwitch.value)
        let b = CGFloat(blueSwitch.value)
        
        viewBox.backgroundColor=UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

