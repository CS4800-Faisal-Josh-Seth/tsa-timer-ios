//
//  TimerViewController.swift
//  TSAWaitTime
//
//  Created by Syed, Faisal on 2/27/23.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var seconds = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds += 1
        timerLabel.text = "\(seconds) sec"
    }
    
    @IBAction func startTapped(_ sender: Any) {
        runTimer()
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        timer.invalidate()
        seconds = 0
        timerLabel.text = "\(seconds)"
    }

}
