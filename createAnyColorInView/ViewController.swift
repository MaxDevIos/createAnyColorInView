//
//  ViewController.swift
//  createAnyColorInView
//
//  Created by Maxim Kucherov on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var colorChangeView: UIView!
    
    @IBOutlet private var redColorNumberLabel: UILabel!
    @IBOutlet private var greenColorNumberLabel: UILabel!
    @IBOutlet private var blueColorNumberLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChangeView.layer.cornerRadius = 15
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
        redSlider.tintColor = .red
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
        greenSlider.tintColor = .green
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
        blueSlider.tintColor = .systemBlue
        
        redColorNumberLabel.text = String(format: "%.2f", redSlider.value)
        greenColorNumberLabel.text = String(format: "%.2f", greenSlider.value)
        blueColorNumberLabel.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction private func redSliderAction() {
        redColorNumberLabel.text = String(format: "%.2f", redSlider.value)
        display()
    }
    
    
    @IBAction private func greenSliderAction() {
        greenColorNumberLabel.text = String(format: "%.2f", greenSlider.value)
        display()
    }
    
    
    @IBAction private func blueSliderAction() {
        blueColorNumberLabel.text = String(format: "%.2f", blueSlider.value)
        display()
    }
    
    private func display() {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorChangeView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
}


