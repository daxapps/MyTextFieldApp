//
//  ViewController.swift
//  MyTextFieldApp
//
//  Created by Jason Crawford on 9/18/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var switchControlledTextField: UITextField!


    @IBOutlet weak var editingSwitch: UISwitch!
    

    let zipDelegate = ZipCodeDelegate()
    let cashDelegate = CashDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeTextField.delegate = self.zipDelegate
        self.cashTextField.delegate = self.cashDelegate
        self.switchControlledTextField.delegate = self
        
        self.editingSwitch.setOn(false, animated: false)
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.editingSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    // MARK: Actions
    
    @IBAction func toggleTheTextEditor(sender: AnyObject) {
        
        if !(sender as! UISwitch).on {
            self.switchControlledTextField.resignFirstResponder()
        }
    }
}

