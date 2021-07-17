//
//  ViewController.swift
//  createAnyColorInView
//
//  Created by Maxim Kucherov on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorChangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChangeView.layer.cornerRadius = 15
    }


}

