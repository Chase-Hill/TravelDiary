//
//  EntryDetailViewController.swift
//  TravelDiary
//
//  Created by Chase on 2/9/23.
//

import UIKit

class EntryDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var entryDateLabel: UILabel!
    
    @IBOutlet weak var entryTitleTextField: UITextField!
    
    @IBOutlet weak var entryAddressTextField: UITextField!
    
    @IBOutlet weak var entryBodyTextView: UITextView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    // MARK: - Properties
    var entryReciever: Entry?
    
    // MARK: - Helper Functions
    func updateView() {
        guard let entryReciever = entryReciever else {return}
        entryTitleTextField.text = entryReciever.title
        entryAddressTextField.text = entryReciever.address
        entryDateLabel.text = entryReciever.entryDate.stringValue()
        entryBodyTextView.text = entryReciever.body
    }
    
    // MARK: - Actions
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = entryTitleTextField.text,
              let address = entryAddressTextField.text,
              let body = entryBodyTextView.text else {return}
        
        // Check to see if 'entryReciever' on line 25 has a value
        if let entry = entryReciever {
            // If 'entryReciever' has a value, the user has selected a cell and our segue has sent over the selected 'Entry'
            EntryController.sharedInstance.update(entryToUpdate: entry, newTitle: title, newAddress: address, newBody: body)
        } else {
            // Else, 'entryReciever' does NOT have a value, the user did not select a cell, the user must have selected the add entry button.
            EntryController.sharedInstance.createEntry(title: title, addy: address, body: body)
        }
        navigationController?.popViewController(animated: true)
    }
    
} // End of Class
