//
//  ProfileController.swift
//  hercard
//
//  Created by Yunseong hur on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var company: UILabel!
    @IBOutlet var position: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var uiView_card: UIView!
    @IBOutlet var imageView_card: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.synchronize()
        let strings = UserDefaults.standard.object(forKey: "myCard") as? [String:String]
        nameLabel.text = strings?["name"]
        company.text = strings?["company"]
        position.text = strings?["position"]
        phone.text = strings?["phone"]
        email.text = strings?["email"]
    self.imageView_card.styleCards(containerView: uiView_card, cornerRadius: 25)

    }

}
