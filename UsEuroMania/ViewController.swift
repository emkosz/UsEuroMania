//
//  ViewController.swift
//  UsEuroMania
//
//  Created by Emma Koszinowski on 5/23/15.
//  Copyright (c) 2015 Emma Koszinowski. All rights reserved.
//


// dismiss the keyboard when done editing - done
// make view scrollable 

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var bodyWeightTextField: UITextField!
    
    @IBOutlet weak var bodyLenghtTextField: UITextField!
    
    @IBOutlet weak var travelDistanceTextField: UITextField!
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
        // BODY WEIGHT
        
        if textField == bodyWeightTextField {
            
            println("----")
            println("current string: \(bodyWeightTextField.text)")
            println("replacement range: \(range)")
            println("new stuff: \(string)")
            
            // transfer the input to NSString
            let currentStringAsNSString = NSString(string: bodyWeightTextField.text)
            
            // store the updated string
            let updatedString = currentStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            println("updated string: \(updatedString)")
            
            // transfer the string to a duouble
            let bodyWeight = (updatedString as NSString).doubleValue
            // the unit conversion
            let bodyWeightInPounds = bodyWeight * 2.20462262
            // put the converted value in the label, by converting it to a string, with one decimal
            enteredValue.text = String(format: "%.1f", arguments:[bodyWeightInPounds])
        
            
        }
            
        // BODY LENGHT
        
        else if textField == bodyLenghtTextField {
            
            // transfer the input to NSString
            let currentLenghtStringAsNSString = NSString(string: bodyLenghtTextField.text)
            
            // store the updated string
            let updatedLenghtString = currentLenghtStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            println("updated string: \(updatedLenghtString)")
            
            // transfer the string to a duouble
            let bodyLenght = (updatedLenghtString as NSString).doubleValue
            // the unit conversion
            let bodyLenghtInFeet = bodyLenght * 0.032808399
            // put the converted value in the label, by converting it to a string, with one decimal
            enteredValueLenght.text = String(format: "%.1f", arguments:[bodyLenghtInFeet])
            
        }
            
        
        // TRAVEL DISTANCE
            
        else if textField == travelDistanceTextField {
            // transfer the input to NSString
            let currentTravelDistanceStringAsNSString = NSString(string: travelDistanceTextField.text)
            
            // store the updated string
            let updatedTravelString = currentTravelDistanceStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            println("updated string: \(updatedTravelString)")
            
            // transfer the string to a duouble
            let travelDistance = (updatedTravelString as NSString).doubleValue
            // the unit conversion
            let travelDistanceInMiles = travelDistance * 0.621371192
            // put the converted value in the label, by converting it to a string, with one decimal
            enteredValueTravelDistance.text = String(format: "%.1f", arguments:[travelDistanceInMiles])
            
                
        }
        
        
        
        return true
    }
    

    
    @IBOutlet weak var enteredValue: UILabel!
    
    @IBOutlet weak var enteredValueLenght: UILabel!
    
    @IBOutlet weak var enteredValueTravelDistance: UILabel!
    
    

    
    
    // Dismiss the keyboard when touching outside of the textfield
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

