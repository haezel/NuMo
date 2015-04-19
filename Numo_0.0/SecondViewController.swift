//
//  SecondViewController.swift
//  Numo_0.0
//
//  Created by Kathryn Manning on 4/5/15.
//  Copyright (c) 2015 kathrynmanning. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemNameField: UITextField!
    
    @IBOutlet weak var itemAmountField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //when touching else, keyboard (and any editing) goes away
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    //only allow numbers and .- in amount field
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var result = true
        
        if textField == itemAmountField {
            if countElements(string) > 0 {
                let disallowedCharacterSet = NSCharacterSet(charactersInString: "0123456789.-").invertedSet
                let replacementStringIsLegal = string.rangeOfCharacterFromSet(disallowedCharacterSet) == nil
                result = replacementStringIsLegal
            }
        }
        return result
    }
    
    //events
    @IBAction func addItem(sender: UIButton) {
        let amount = itemAmountField.text
         
        foodItemLogManager.addFoodItem(itemNameField.text, amount: (itemAmountField.text as NSString).doubleValue)
        self.view.endEditing(true)
        itemNameField.text = ""
        itemAmountField.text = ""
    }

}

