//
//  AirportsTableViewController.swift
//  TSAWaitTime
//
//  Created by Syed, Faisal on 2/27/23.
//

import UIKit

class AirportsTableViewController: UITableViewController {
    
    // Hardcoded for now
    private let airports = ["John Wayne (SNA)", "Ontario", "LAX"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "AirportCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return airports.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AirportCell", for: indexPath)

        cell.textLabel?.text = airports[indexPath.row]
        cell.accessoryType = .disclosureIndicator

        return cell
    }
    
    // MARK: - Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let timerVC = storyboard.instantiateViewController(withIdentifier: "TimerVC") as? TimerViewController {
            self.navigationController?.pushViewController(timerVC, animated: true)
        }
    }

}
