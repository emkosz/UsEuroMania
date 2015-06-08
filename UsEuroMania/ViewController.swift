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
    
    // Textfield Outlets
    
    @IBOutlet weak var bodyWeightTextField: UITextField!
    
    @IBOutlet weak var bodyLenghtTextField: UITextField!
    
    @IBOutlet weak var travelDistanceTextField: UITextField!
    
    @IBOutlet weak var roomDistanceTextField: UITextField!
    
    @IBOutlet weak var temperatureTextField: UITextField!
    
    @IBOutlet weak var bakingVolumeTextField: UITextField!
    
    @IBOutlet weak var drinkVolumeTextField: UITextField!
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
        // BODY WEIGHT
        
        if textField == bodyWeightTextField {
            
            println("----")
            println("current string: \(bodyWeightTextField.text)")
            println("replacement range: \(range)")
            println("new stuff: \(string)")
            
            // transfer the input to NSString
            let currentStringAsNSString = bodyWeightTextField.text as NSString
            
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
            
            // transfer the string to a duouble
            let travelDistance = (updatedTravelString as NSString).doubleValue
            // the unit conversion
            let travelDistanceInMiles = travelDistance * 0.621371192
            // put the converted value in the label, by converting it to a string, with one decimal
            enteredValueTravelDistance.text = String(format: "%.1f", arguments:[travelDistanceInMiles])
        }
        
        
        // ROOM DISTANCE
        
        else if textField == roomDistanceTextField {
            
            let currentRoomDistanceStringAsNSString = roomDistanceTextField.text as NSString
            
            let uppdatedRoomString = currentRoomDistanceStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            
            let roomDistance = (uppdatedRoomString as NSString).doubleValue
            
            // unit conversion from meter to feet
            let roomDistanceInFeet = roomDistance * 3.2808399
            enteredValueRoomDistance.text = String(format: "%.1f", arguments:[roomDistanceInFeet])
        }
        
        // TEMPERATURE
        
        else if textField == temperatureTextField {
            
            let currentTemperatureStringAsNSString = temperatureTextField.text as NSString
            
            let updatedTemperatureString = currentTemperatureStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            
            let temperature = (updatedTemperatureString as NSString).doubleValue
            
            let temperatureInFarenheit = temperature * 9/5 + 32
            enteredValueTemperature.text = String(format: "%.1f", arguments:[temperatureInFarenheit])
        }
        
        
        // BAKING VOLUME
        
        else if textField == bakingVolumeTextField {
            
            let currentBakingStringAsNSString = bakingVolumeTextField.text as NSString
            
            let updatedBakingString = currentBakingStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            
            let bakingVolume = (updatedBakingString as NSString).doubleValue
            
            let bakingVolumeInCups = bakingVolume * 0.422675284
            enteredValueBakingVolume.text = String(format: "%.1f", arguments:[bakingVolumeInCups])
        }
        
        
        
        // DRINK VOLUME
        
        else if textField == drinkVolumeTextField {
            
            let currentDrinkStringAsNSString = drinkVolumeTextField.text as NSString
            
            let updatedDrinkString = currentDrinkStringAsNSString.stringByReplacingCharactersInRange(range, withString: string)
            
            let drinkVolume = (updatedDrinkString as NSString).doubleValue
            
            let drinkVolumeInGallon = drinkVolume * 0.264172052
            enteredValueDrinkVolume.text = String(format: "%.1f", arguments:[drinkVolumeInGallon])


        }
        
        
        
        return true
    }
    
    // Labels to display unit convertion
    
    @IBOutlet weak var enteredValue: UILabel!
    
    @IBOutlet weak var enteredValueLenght: UILabel!
    
    @IBOutlet weak var enteredValueTravelDistance: UILabel!
    
    @IBOutlet weak var enteredValueRoomDistance: UILabel!

    @IBOutlet weak var enteredValueTemperature: UILabel!
   
    @IBOutlet weak var enteredValueBakingVolume: UILabel!
    
    @IBOutlet weak var enteredValueDrinkVolume: UILabel!
    
    
    
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

