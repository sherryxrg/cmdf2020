//
//  FirstViewController.swift
//  hercard
//
//  Created by Sherry Guo on 2020-03-07.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    @IBOutlet var uiView_card1: UIView!
    @IBOutlet var imageView_card1: UIImageView!

    @IBOutlet var uiView_card2: UIView!
    @IBOutlet var imageView_card2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.imageView_card1.styleCards(containerView: uiView_card1, cornerRadius: 25)
        self.imageView_card2.styleCards(containerView: uiView_card2, cornerRadius: 25)
        
    }
    
}

extension UIImageView {
    func styleCards(containerView: UIView, cornerRadius : CGFloat){
        containerView.clipsToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.5
        containerView.layer.shadowOffset = CGSize.zero
        containerView.layer.shadowRadius = 10
        containerView.layer.cornerRadius = cornerRadius
        containerView.layer.shadowPath = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: cornerRadius).cgPath
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
}

