//
//  ViewController.swift
//  TSAWaitTime
//
//  Created by Syed, Faisal on 2/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TSA Wait Time"
    }
    
    @IBAction func showAirportsClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let airportsTableVC = storyboard.instantiateViewController(withIdentifier: "airportsTableVC") as? AirportsTableViewController {
            self.navigationController?.pushViewController(airportsTableVC, animated: true)
        }
    }
}

