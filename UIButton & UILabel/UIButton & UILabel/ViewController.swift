//
//  ViewController.swift
//  UIButton & UILabel
//
//  Created by Diana Agapkina on 10/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.systemBlue, for: .normal)
            button.backgroundColor = .white
        }
        
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 1 {
            label.text = "Hello World!"
            label.textColor = .darkGray
        } else if sender.tag == 2 {
            label.text = "Hi there!"
            label.textColor = .gray
        } else if sender.tag == 3 {
            label.isHidden = true
            button.isHidden = true
        }
    }
    
}

