//
//  ViewController.swift
//  MYOA
//
//  Created by Sagar Bhosale on 9/25/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action:#selector(startOver))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit
    {
        print("view controller deallocated.")
    }

    @IBAction func startOver()
    {
        if let navigationController = self.navigationController
        {
            navigationController.popToRootViewController(animated: true)
        }
    }

}

