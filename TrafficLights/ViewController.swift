//
//  ViewController.swift
//  TrafficLights
//
//  Created by Irina Muravyeva on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    enum LightsColors {
        case red
        case yellow
        case green
    }
    
    var nextLight = LightsColors.red
    
    @IBOutlet var redView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.height/2
        yellowView.layer.cornerRadius = yellowView.frame.height/2
        greenView.layer.cornerRadius = greenView.frame.height/2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        
        trafficLightButton.setTitle("START", for: .normal)
    }

    @IBAction func trafficLightButtonSwitch() {
        
        
        
        switch nextLight {
        case .red:
            greenView.alpha = 0.3
            redView.alpha = 1
            nextLight = LightsColors.yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            nextLight = LightsColors.green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            nextLight = LightsColors.red
        }
        
        trafficLightButton.setTitle("NEXT", for: .normal)
    }
    
}

