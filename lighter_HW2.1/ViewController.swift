//
//  ViewController.swift
//  lighter_HW2.1
//
//  Created by Lyudmila Tokar on 1/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var buttonPressText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        redLightView.layer.cornerRadius = 45
        yellowLightView.layer.cornerRadius = 45
        greenLightView.layer.cornerRadius = 45
        
        buttonPressText.layer.cornerRadius = 10
        
    }

    @IBAction func buttonPressed() {
        
    }
}

