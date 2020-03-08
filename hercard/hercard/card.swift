//
//  card.swift
//  hercard
//
//  Created by Gina Kim on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import Foundation
import UIKit

class Card: UIViewController, UITextFieldDelegate {

    @IBOutlet var name: UITextField!
    @IBOutlet var company: UITextField!
    @IBOutlet var position: UITextField!
    @IBOutlet var phone: UITextField!
    @IBOutlet var email: UITextField!
    
    var nameText:String = "nameText"

    
    @IBAction func create_card(_ sender: UIButton) {
        nameText = name.text!
        UserDefaults.standard.set(self.nameText, forKey: "Name")
        let dictionary = [
            "name": name.text,
            "company": company.text,
            "position": position.text,
            "phone": phone.text,
            "email": email.text
        ]
        UserDefaults.standard.set(dictionary, forKey: "myCard")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        name.resignFirstResponder()
    }
    
//    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer){
//        name.resignFirstResponder()
//        company.resignFirstResponder()
//        position.resignFirstResponder()
//        phone.resignFirstResponder()
//        email.resignFirstResponder()
//
//        }
//
    
}
