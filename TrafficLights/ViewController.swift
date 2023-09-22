//
//  ViewController.swift
//  TrafficLights
//
//  Created by Irina Muravyeva on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        trafficLightButton.titleLabel?.text = "START"
    }

    @IBAction func trafficLightButtonSwitch() {
    }
    
}

