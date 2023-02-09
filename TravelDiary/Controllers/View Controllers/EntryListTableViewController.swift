//
//  EntryListTableViewController.swift
//  TravelDiary
//
//  Created by Chase on 2/9/23.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    
    // MARK: - LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EntryController.sharedInstance.entries.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         guard let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryTableViewCell else {return UITableViewCell()}
     
     // Configure the cell...
         
         let entryForTheCellToUpdateWith = EntryController.sharedInstance.entries[indexPath.row]
         cell.updateView(with: entryForTheCellToUpdateWith)
     
         return cell
     }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let entryToBeDeleted = EntryController.sharedInstance.entries[indexPath.row]
            EntryController.sharedInstance.delete(entryToDelete: entryToBeDeleted)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //IIDOO
         if segue.identifier == "toDetailVC" {
             // What cell?
             if let indexPath = tableView.indexPathForSelectedRow {
                 // What destination?
                 if let destinationVC = segue.destination as? EntryDetailViewController {
                     // Object to send
                     let entryToSend = EntryController.sharedInstance.entries[indexPath.row]
                    // Object to recieve
                     destinationVC.entryReciever = entryToSend
                 }
             }
         }
     }
}
