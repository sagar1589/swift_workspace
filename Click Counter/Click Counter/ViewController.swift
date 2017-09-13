//
//  ViewController.swift
//  Click Counter
//
//  Created by Sagar Bhosale on 9/12/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count=0
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        let label = UILabel()
        label.text="0"
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        self.view.addSubview(label)
        
        self.label=label
        
        //Button
        
        let button=UIButton()
        button.setTitle("Click", for: .normal)
        button.frame=CGRect(x: 150, y: 200, width: 100, height: 60)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(incrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    @IBAction func incrementCount()
    {
        self.count += 1
        self.label.text="\(self.count)"
    }


}

