//
//  BAViewController.swift
//  hercard
//
//  Created by Sherry Guo on 2020-03-08.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import Foundation
import UIKit

class BAViewController: UIViewController {

    @IBOutlet weak var uiViewCard: UIView!
    @IBOutlet weak var imageViewCard: UIImageView!
    @IBOutlet weak var nameCard: UILabel!
    @IBOutlet weak var companyCard: UILabel!
    @IBOutlet weak var positionCard: UILabel!
    @IBOutlet weak var phoneCard: UILabel!
    @IBOutlet weak var emailCard: UILabel!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageViewCard.styleCards(containerView: uiViewCard, cornerRadius: 25)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swapCard(_ sender: Any) {
        let infoCard1 = ["name0": nameCard.text, "company0":companyCard.text, "position0":positionCard.text, "phone0":phoneCard.text, "email0"
            :emailCard.text]
        defaults.set(infoCard1, forKey: "card0")
        
        
        UserDefaults.standard.set(nameCard.text, forKey: "name0")
    }
}
