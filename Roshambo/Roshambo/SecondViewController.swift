//
//  SecondViewController.swift
//  Roshambo
//
//  Created by Sagar Bhosale on 9/13/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var text:String!
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text="scissor clicked"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        resultLabel.text=text
    }
    
    @IBAction func playAgain()
    {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
