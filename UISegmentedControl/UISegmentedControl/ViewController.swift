//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Diana Agapkina on 10/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func suitDidChange(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            label.text = "♠️"
        case 1:
            label.text = "♥️"
        case 2:
            label.text = "♣️"
        case 3:
            label.text = "♦️"
        default:
            label.text = "♠️"
        }
        
    }
    
}

