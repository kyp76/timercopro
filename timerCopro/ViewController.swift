//
//  ViewController.swift
//  timerCopro
//
//  Created by simon vandenbulcke on 29/07/2020.
//  Copyright © 2020 simon vandenbulcke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    }
    @IBAction func pauseTimer(_ sender: Any) {
    }
    @IBAction func resetTimer(_ sender: Any) {
    }
    private func roundButton() {
        resetButton.layer.cornerRadius = resetButton.layer.frame.height/2
        startButton.layer.cornerRadius = startButton.layer.frame.height/2
        pauseButton.layer.cornerRadius = pauseButton.layer.frame.height/2
        
    
    }
}

