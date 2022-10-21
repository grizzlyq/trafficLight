//
//  ViewController.swift
//  trafficLight
//
//  Created by Дмитрий on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var redButton: UIView!
    @IBOutlet weak var yellowButton: UIView!
    @IBOutlet weak var greenButton: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redButton.layer.cornerRadius = 40
        yellowButton.layer.cornerRadius = 40
        greenButton.layer.cornerRadius = 40
        
        startButton.layer.cornerRadius = 20
        redButton.alpha = 0.3
        yellowButton.alpha = 0.3
        greenButton.alpha = 0.3
    }


    @IBAction func startButtonTapped() {
        
        if redButton.alpha <= 0.4 && yellowButton.alpha <= 0.4 && greenButton.alpha <= 0.4 {
            startButton.setTitle("Next", for: .normal)
            redButton.alpha = 1
        } else if redButton.alpha == 1 && yellowButton.alpha <= 0.4 && greenButton.alpha <= 0.4 {
            yellowButton.alpha = 1
            redButton.alpha = 0.3
        } else if redButton.alpha <= 0.4 && yellowButton.alpha == 1 && greenButton.alpha <= 0.4 {
            greenButton.alpha = 1
            yellowButton.alpha = 0.3
        } else {
            redButton.alpha = 1
            yellowButton.alpha = 0.3
            greenButton.alpha = 0.3
        }
    }
}

