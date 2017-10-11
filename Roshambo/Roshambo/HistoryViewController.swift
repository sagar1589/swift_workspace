//
//  HistoryViewController.swift
//  Roshambo
//
//  Created by Sagar Bhosale on 9/22/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UITableViewController
{
    var history:[History]?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (history?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell")!
            let historyForRow = history?[indexPath.row]
            let label = cell.viewWithTag(1) as! UILabel
            label.text = historyForRow?.name
            let switchB = cell.viewWithTag(3) as! UISwitch
            switchB.isOn=false;
            let image = cell.viewWithTag(2) as! UIImageView
            image.image=UIImage(named: "ScissorsCutPaper");
                        return cell
        }else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell")!
            let historyForRow = history?[indexPath.row]
            cell.textLabel?.text=historyForRow?.result
            cell.detailTextLabel?.text = historyForRow?.name
            cell.imageView?.image=UIImage(named: "PaperCoversRock");
            cell.accessoryType=UITableViewCellAccessoryType.detailButton
            return cell
        }
    }
}

struct History {
    var result:String?
    var name:String?
}
