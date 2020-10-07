//
//  ViewController.swift
//  UITextField
//
//  Created by Diana Agapkina on 10/7/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.returnKeyType = .done
        field.autocapitalizationType = .words
        field.autocorrectionType = .no
        field.becomeFirstResponder()
        
        field.delegate = self
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        field.resignFirstResponder()
        
        if let _ = Double(field.text!) {
            let alert = UIAlertController(title: "Wrong format", message: "Please enter your name", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
                self.field.text = nil
            }
            
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        } else {
            label.text = field.text!
            field.text = nil
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        field.resignFirstResponder()
        
        let text = field.text!
        print(text)
        
        return true
    }
}

