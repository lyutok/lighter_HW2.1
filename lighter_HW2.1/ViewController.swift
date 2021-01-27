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
    
    var darkRed: Bool = true
    var darkYellow: Bool = true
    var darkGreen: Bool = true
    
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
        if darkRed && darkYellow && darkGreen {
            redLightView.alpha = 1
            darkRed = false
            buttonPressText.setTitle("NEXT", for: .normal)
            
        } else if !darkRed && darkYellow && darkGreen {
            redLightView.alpha = 0.3
            darkRed = true
            yellowLightView.alpha = 1
            darkYellow = false
            
        } else if darkRed && !darkYellow && darkGreen {
            yellowLightView.alpha = 0.3
            darkYellow = true
            greenLightView.alpha = 1
            darkGreen = false
            
        } else if darkRed && darkYellow && !darkGreen {
            greenLightView.alpha = 0.3
            darkGreen = true
            redLightView.alpha = 1
            darkRed = false
        }
    }
}

