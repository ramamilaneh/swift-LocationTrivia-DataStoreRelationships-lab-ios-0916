//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Rama Milaneh on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var nameTextFieldLabel: UITextField!
    @IBOutlet weak var latitudeTextFieldLabel: UITextField!
    @IBOutlet weak var longitudeTextFieldLabel: UITextField!
    
    @IBOutlet weak var cancelButtonLabel: UIButton!
    @IBOutlet weak var submitButtonlabel: UIButton!
    var newLocation = Location()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextFieldLabel.accessibilityLabel = "nameField"
        self.nameTextFieldLabel.accessibilityIdentifier = "nameField"
        self.latitudeTextFieldLabel.accessibilityLabel = "latitudeField"
        self.latitudeTextFieldLabel.accessibilityIdentifier = "latitudeField"
        self.longitudeTextFieldLabel.accessibilityLabel = "longitudeField"
        self.longitudeTextFieldLabel.accessibilityIdentifier = "longitudeField"
        self.submitButtonlabel.accessibilityLabel = "saveButton"
        self.submitButtonlabel.accessibilityIdentifier = "saveButton"
        self.cancelButtonLabel.accessibilityLabel = "cancelButton"
        self.cancelButtonLabel.accessibilityIdentifier = "cancelButton"
        

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func cancelButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        if let unwrappedName = nameTextFieldLabel.text {
           
        self.newLocation.name = unwrappedName
        }
        if let unwrappedLatitude = latitudeTextFieldLabel.text {
          
            self.newLocation.latitude = Float(unwrappedLatitude)!
        }
        if let unwrappedLongtitude = longitudeTextFieldLabel.text {
            self.newLocation.longitude = Float(unwrappedLongtitude)!
           
        }
        LocationsDataStore.sharedInstance.locations.append(newLocation)
        dismiss(animated: true, completion: nil)
        
        
    }
    
    

   
}
