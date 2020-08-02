//
//  ViewController.swift
//  timerCopro
//
//  Created by simon vandenbulcke on 29/07/2020.
//  Copyright © 2020 simon vandenbulcke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time: Int = 0
    var timer = Timer()
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roundButton()
    }
 
    @IBAction func startTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerDidEnded) , userInfo: nil, repeats: true)
    }
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetTimer(_ sender: Any) {
        timer.invalidate()
        time = 0
        
        updateUI()
    }
    private func roundButton() {
        resetButton.layer.cornerRadius = resetButton.layer.frame.height/2
        startButton.layer.cornerRadius = startButton.layer.frame.height/2
        pauseButton.layer.cornerRadius = pauseButton.layer.frame.height/2
    }
    
    @objc private func timerDidEnded() {
        time += 1
        updateUI()
    }
    private func updateUI() {
        var hour : Int
        var min : Int
        var sec : Int
        
        hour = time/(60*60)
        min = (time/60)%60
        sec = time%60
        
        hourLabel.text = String(hour)
        minutesLabel.text = String(min)
        secondLabel.text = String(sec)
    }
}

