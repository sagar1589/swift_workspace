//
//  FirstDelegate.swift
//  TextField Challenge App
//
//  Created by Sagar Bhosale on 9/14/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import Foundation
import UIKit

class FirstDelegate: NSObject, UITextFieldDelegate
{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var text = textField.text! as NSString
        text = text.replacingCharacters(in: range, with: string) as NSString
        
        return text.length<=5
    }
}
