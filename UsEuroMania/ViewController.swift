//
//  ViewController.swift
//  UsEuroMania
//
//  Created by Emma Koszinowski on 5/23/15.
//  Copyright (c) 2015 Emma Koszinowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var bodyWeightTextField: UITextField!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        println("----")
        println("current string: \(bodyWeightTextField.text)")
        println("replacement range: \(range)")
        println("new stuff: \(string)")
        let currentStringAsNSString = NSString(string: bodyWeightTextField.text)
        
        let updatedString = currentStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
        println("updated string: \(updatedString)")
        
     
        let bodyWeight = (updatedString as NSString).doubleValue
        let bodyWeightInPounds = bodyWeight * 2.20462262
        enteredValue.text = String(format: "%.1f", arguments:[bodyWeightInPounds])

            
        
        
        
        
        return true
    }
    

    
    @IBOutlet weak var enteredValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonClicked(sender: AnyObject) {
        
        bodyWeightTextField.resignFirstResponder();
        enteredValue.text = bodyWeightTextField.text;
        
    }
    
  
    @IBAction func weightEntered(sender: UITextField) {
        bodyWeightTextField.resignFirstResponder();
        enteredValue.text = bodyWeightTextField.text;
    }
    
  


}

