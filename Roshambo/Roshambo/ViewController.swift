//
//  ViewController.swift
//  Roshambo
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

    @IBAction func rockClick()
    {
        let resultVC=storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        let image = UIImage(named: "PaperCoversRock")!
        //resultVC.image.image=image
        resultVC.labelText.text="Rock clicked"
        self.present(resultVC, animated: true, completion: nil)
        
    }

    @IBAction func paperClick()
    {
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultVC = segue.destination as! SecondViewController
        
        if segue.identifier == "scissorSegue"
        {
            resultVC.labelText.text="scissor clicked"
        }else
        {
            resultVC.labelText.text="paper clicked"
        }
    }

}

