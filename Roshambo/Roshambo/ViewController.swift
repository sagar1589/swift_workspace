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
        resultVC.text="Rock clicked"
        //self.present(resultVC, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(resultVC, animated: true);
        
    }

    @IBAction func paperClick()
    {
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.destination is SecondViewController
        {
            var resultVC : SecondViewController!
            resultVC = segue.destination as! SecondViewController
            if segue.identifier == "scissorSegue"
            {
                resultVC.text="scissor clicked"
            }
            else
            {
                resultVC.text="paper clicked"
            }
            
        }else
        {
            var resultVC : HistoryViewController!
            resultVC = segue.destination as! HistoryViewController
            if segue.identifier == "historySegue"
            {
                resultVC.history=[History]()
                for _ in 1...5
                {
                    let historyItem = History(result: "item", name: "name")
                    resultVC.history?.append(historyItem)
                }
                
            }
        }
        
        
        
        
    }
    
    @IBAction func showHistory()
    {
       performSegue(withIdentifier: "historySegue", sender: self)
    }

}

