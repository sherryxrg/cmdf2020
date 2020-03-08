//
//  card.swift
//  hercard
//
//  Created by Gina Kim on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import Foundation
import UIKit

class Card: UIViewController {
    @IBOutlet var name: UITextField!
    @IBOutlet var company: UITextField!
    @IBOutlet var position: UITextField!
    @IBOutlet var phone: UITextField!
    @IBOutlet var email: UITextField!
    
    var nameText:String = "nameText"

    
    @IBAction func create_card(_ sender: UIButton) {
//        nameText = name.text!
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
        
    }
    
    
}
