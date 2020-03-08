//
//  card.swift
//  hercard
//
//  Created by Gina Kim on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import Foundation
import UIKit

class Card {
    var name: String
    var company: String
    var position: String
    var phone: String
    var email: String
    
    init(name: String, company: String, position: String, phone: String, email: String){
        self.name = name
        self.company = company
        self.position = position
        self.phone = phone
        self.email = email
    }
}
