//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Rama Milaneh on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    @IBOutlet weak var cancelButtonLabel: UIButton!
    @IBOutlet weak var triviaTextFieldLabel: UITextField!
    @IBOutlet weak var saveButtonLabel: UIButton!
    var newLocation = Location()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.cancelButtonLabel.accessibilityIdentifier = "Cancel Button"
        self.cancelButtonLabel.accessibilityLabel = "Cancel Button"
        self.triviaTextFieldLabel.accessibilityLabel = "Trivium Text Field"
        self.triviaTextFieldLabel.accessibilityIdentifier = "Trivium Text Field"
        self.saveButtonLabel.accessibilityIdentifier = "Save Button"
        self.saveButtonLabel.accessibilityLabel = "Save Button"
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: AnyObject) {
       
        if let unwrappedNewContent = self.triviaTextFieldLabel.text {
         self.newLocation.trivia.append(Trivium(content: unwrappedNewContent, likes: 0))
        }
    
        dismiss(animated: true, completion: nil)
        
    }
    

   
}
