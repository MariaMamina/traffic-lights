//
//  ViewController.swift
//  traffic lights
//
//  Created by Maria Mamina on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var lightChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65
        
        lightChangeButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    var lightNumber = 0
    
    @IBAction func lightChanging() {
        lightChangeButton.setTitle("Next", for: .normal)
        lightNumber += 1
        if lightNumber > 3 {lightNumber = 1}
        switch lightNumber {
        case 1:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case 2:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        case 3:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        default:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        }
    }
    
}

