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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.synchronize()
        nameLabel.text = UserDefaults.standard.string(forKey: "Name")

        // Do any additional setup after loading the view.
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
