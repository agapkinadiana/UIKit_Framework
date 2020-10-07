//
//  ViewController.swift
//  UISlider
//
//  Created by Diana Agapkina on 10/7/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var rSlider: UISlider! {
        didSet {
            rSlider.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
            rSlider.tintColor = .systemRed
        }
    }
    @IBOutlet weak var gSlider: UISlider! {
        didSet {
            gSlider.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
            gSlider.tintColor = .systemGreen
        }
    }
    @IBOutlet weak var bSlider: UISlider! {
        didSet {
            bSlider.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        }
    }
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberSliderChanged(_ sender: UISlider) {
        label.text = String(numberSlider.value)
    }
    
    @IBAction func rgbSliderChanged(_ sender: UISlider) {
        changeColor()
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    
}

