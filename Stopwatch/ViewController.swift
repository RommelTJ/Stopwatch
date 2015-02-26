//
//  ViewController.swift
//  Stopwatch
//
//  Created by Rommel Rico on 2/25/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTimeLabel: UILabel!
    var timer = NSTimer()
    var count = 0
    
    
    @IBAction func doStop(sender: AnyObject) {
        count = 0
        timer.invalidate()
        updateDisplay()
    }
    
    
    @IBAction func doPause(sender: AnyObject) {
        timer.invalidate()
        updateDisplay()
    }

    
    @IBAction func doPlay(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("doTimer"), userInfo: nil, repeats: true)
    }
    
    func doTimer() {
        count++
        updateDisplay()
    }
    
    func updateDisplay() {
        myTimeLabel.text = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTimeLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

