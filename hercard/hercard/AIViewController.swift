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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView_card1.styleCards(containerView: uiView_card1, cornerRadius: 25)
        self.imageView_card2.styleCards(containerView: uiView_card2, cornerRadius: 25)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swap_card1(_ sender: Any) {
    }
    
    @IBAction func swap_card2(_ sender: Any) {
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
