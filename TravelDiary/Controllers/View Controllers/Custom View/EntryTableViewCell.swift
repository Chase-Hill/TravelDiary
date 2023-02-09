//
//  EntryTableViewCell.swift
//  TravelDiary
//
//  Created by Chase on 2/9/23.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var entryTitleLabel: UILabel!
    
    @IBOutlet weak var entryAddressLabel: UILabel!
    
    @IBOutlet weak var entryDateLabel: UILabel!
    
    func updateView(with entryToDisplay: Entry) {
        entryTitleLabel.text = entryToDisplay.title
        entryAddressLabel.text = entryToDisplay.address
        entryDateLabel.text = entryToDisplay.entryDate.stringValue()
    }
}
