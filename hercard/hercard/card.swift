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
    
    var nameText = ""
    
    @IBAction func create_card(_ sender: UIButton) {
        self.nameText = name.text!
        performSegue(withIdentifier: "profile", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ProfileController
        vc.finalName = self.nameText
    }
    
    
}
