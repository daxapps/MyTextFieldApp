//
//  ZipCodeDelegate.swift
//  MyTextFieldApp
//
//  Created by Jason Crawford on 9/18/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    
    
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
}
