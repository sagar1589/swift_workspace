//
//  DetailViewController.swift
//  BondVillains
//
//  Created by Sagar Bhosale on 10/11/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var villianLabel: UILabel!
    
    var villian:Villain?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.imageView.image = UIImage(named: (self.villian?.imageName)!)
        self.villianLabel.text = villian?.name
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
