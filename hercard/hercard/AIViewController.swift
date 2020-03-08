//
//  AIViewController.swift
//  hercard
//
//  Created by Yunseong hur on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import UIKit

class AIViewController: UIViewController {

    @IBOutlet var uiView_card1: UIView!
    @IBOutlet var uiView_card2: UIView!
    @IBOutlet var imageView_card2: UIImageView!
    @IBOutlet var imageView_card1: UIImageView!
    @IBOutlet var nameCard1: UILabel!
    @IBOutlet var companyCard1: UILabel!
    @IBOutlet var positionCard1: UILabel!
    @IBOutlet var phoneCard1: UILabel!
    @IBOutlet var emailCard1: UILabel!
    @IBOutlet var nameCard2: UILabel!
    @IBOutlet var companyCard2: UILabel!
    @IBOutlet var positionCard2: UILabel!
    @IBOutlet var phoneCard2: UILabel!
    @IBOutlet var emailCard2: UILabel!
    
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView_card1.styleCards(containerView: uiView_card1, cornerRadius: 25)
        self.imageView_card2.styleCards(containerView: uiView_card2, cornerRadius: 25)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swap_card1(_ sender: Any) {
        let infoCard1 = ["name1": nameCard1.text, "company1":companyCard1.text, "position1":positionCard1.text, "phone1":phoneCard1.text, "email1"
            :emailCard1.text]
        defaults.set(infoCard1, forKey: "card1")
        
         for (name, path) in infoCard1 {
             print("key: '\(name)', value: '\(path)'")
         }
        
        UserDefaults.standard.set(nameCard1.text, forKey: "name1")
    }
    
    @IBAction func swap_card2(_ sender: Any) {
        let infoCard2 = ["name2": nameCard2.text, "company2":companyCard2.text, "position2":positionCard2.text, "phone2":phoneCard2.text, "email2"
            :emailCard2.text]
        defaults.set(infoCard2, forKey: "card2")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
