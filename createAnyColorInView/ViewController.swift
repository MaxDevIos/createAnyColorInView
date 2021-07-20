//
//  ViewController.swift
//  createAnyColorInView
//
//  Created by Maxim Kucherov on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var colorView: UIView!
    
    @IBOutlet private var redLabel: UILabel!
    @IBOutlet private var greenLabel: UILabel!
    @IBOutlet private var blueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        //Code was deleted
        /*
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        */
 
        setColor()
        
        setValue(to: redLabel, greenLabel, blueLabel)
    }

    @IBAction func setSlider(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0: colorView.backgroundColor = UIColor(
            red: CGFloat(sender.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        case 1: colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(sender.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        case 2: colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(sender.value),
            alpha: 1
        )
        default: break
        }
       
        switch sender.tag {
        case 0: redLabel.text = string(from: sender)
        case 1: greenLabel.text = string(from: sender)
        case 2: blueLabel.text = string(from: sender)
        default: break
        }
    }
    
    //Code was deleted
    /*
    @IBAction private func redSliderAction() {
        redLabel.text = string(from: redSlider)
        setColor()
    }
    
    @IBAction private func greenSliderAction() {
        greenLabel.text = string(from: greenSlider)
        setColor()
    }
    
    @IBAction private func blueSliderAction() {
        blueLabel.text = string(from: blueSlider)
        setColor()
    }
     */
    
 
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(to labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: greenSlider)
            case 2: blueLabel.text = string(from: blueSlider)
            default: break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}


