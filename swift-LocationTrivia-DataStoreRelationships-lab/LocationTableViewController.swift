//
//  LocationTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Rama Milaneh on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {

    var store = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.accessibilityLabel = "Locations Table"
        self.tableView.accessibilityIdentifier = "Locations Table"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
       
           }
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("call numbers of rows")
        return self.store.locations.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("call")
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)

        cell.textLabel?.text = store.locations[indexPath.row].name
        cell.detailTextLabel?.text = String(store.locations[indexPath.row].trivia.count)
        print("name \(store.locations[indexPath.row].name)")

        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let destination = segue.destination as! TriviaTableViewController
            if let unwrappedIndex = tableView.indexPathForSelectedRow {
            destination.location = self.store.locations[unwrappedIndex.row]
        }
        
    }
    
    
    }
  
   

}
