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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
