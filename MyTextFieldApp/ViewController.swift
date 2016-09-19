//
//  ViewController.swift
//  MyTextFieldApp
//
//  Created by Jason Crawford on 9/18/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipCodeTextField: UIView!
    @IBOutlet weak var cashTextField: UIView!
    @IBOutlet weak var switchControledTextField: UIView!
    @IBAction func `switch`(sender: AnyObject) {
    }

    let zipDelegate = ZipCodeDelegate()
    let cashDelegate = CashDelegate()
    let switchDelegate = SwitchDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeTextField.delegate = zipDelegate
        self.cashTextField.delegate = cashDelegate
        self.switchControledTextField = switchDelegate
        
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Figure out what the new text will be, if we return true
        var newText: NSString = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        
        // returning true gives the text field permission to change its text
        return true;
    }



}

