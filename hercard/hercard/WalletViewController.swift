//
//  WalletViewController.swift
//  hercard
//
//  Created by Yunseong hur on 2020-03-08.
//  Copyright © 2020 Sherry Guo. All rights reserved.
//

import Foundation
import UIKit

class WalletViewController: UIViewController {
    
        override func viewWillAppear(_ animated: Bool) {
            print("view refreshed!")
            
            UserDefaults.standard.synchronize()
            
//            if (UserDefaults.standard.string(forKey: "name1") != nil) {
//                // --- load the cards
//                // programatically create a view
//                let myNewView=UIView(frame: CGRect(x: 40, y: 100, width: 300, height: 200))
//                myNewView.backgroundColor=UIColor.red
//                myNewView.layer.cornerRadius=25
//
//                // Add UIView as a Subview
//                self.view.addSubview(myNewView)
//
//                // add label
//                let label = UILabel(frame: CGRect(x: 30, y: 20, width: 300, height: 200))
//                label.textAlignment = NSTextAlignment.center
//                label.text = UserDefaults.standard.string(forKey: "name1")
//                self.view.addSubview(label)
            
            
            
            if (UserDefaults.standard.object(forKey: "card1") != nil) {
                // --- load the cards
                // programatically create a view
                let uiView_card1=UIView(frame: CGRect(x: 18, y: 193, width: 374, height: 170))
                let swapedCard1=UIImageView(frame: CGRect(x:-8, y: -9, width: 391, height: 190))
                swapedCard1.image = UIImage(named: "card2")
                swapedCard1.styleCards(containerView: uiView_card1, cornerRadius: 25)
                
                 // Add UIView as a Subview
                uiView_card1.addSubview(swapedCard1)
                self.view.addSubview(uiView_card1)

                // add label
                var card1Info: [String:String] = UserDefaults.standard.object(forKey: "card1") as? [String:String] ?? [:]
                let name1 = UILabel(frame: CGRect(x: 113, y: 16, width: 149, height: 40))
                let company1 = UILabel(frame: CGRect(x: -8, y: 78, width: 183, height: 17))
                let position1 = UILabel(frame: CGRect(x: 214, y: 78, width: 169, height: 17))
                let phone1 = UILabel(frame: CGRect(x: -8, y: 117, width: 183, height: 17))
                let email1 = UILabel(frame: CGRect(x: 214, y: 114, width: 182, height: 17))
                name1.textAlignment = NSTextAlignment.center
                company1.textAlignment = NSTextAlignment.center
                position1.textAlignment = NSTextAlignment.center
                phone1.textAlignment = NSTextAlignment.center
                email1.textAlignment = NSTextAlignment.center
                name1.text = card1Info["name1"]
                name1.font = UIFont(name: "Futura",
                size: 29.0)
                company1.text = card1Info["company1"]
                position1.text = card1Info["position1"]
                phone1.text = card1Info["phone1"]
                email1.text = card1Info["email1"]
                uiView_card1.addSubview(name1)
                uiView_card1.addSubview(company1)
                uiView_card1.addSubview(position1)
                uiView_card1.addSubview(phone1)
                uiView_card1.addSubview(email1)
                
            if (UserDefaults.standard.object(forKey: "card0") != nil) {
                // --- load the cards
                // programatically create a view
                let uiView_card0=UIView(frame: CGRect(x: 19, y: 418, width: 374, height: 170))
                let swapedCard0=UIImageView(frame: CGRect(x:-8, y: -9, width: 391, height: 190))
                swapedCard0.image = UIImage(named: "card9")
                swapedCard0.styleCards(containerView: uiView_card0, cornerRadius: 25)
                
                 // Add UIView as a Subview
                uiView_card0.addSubview(swapedCard0)
                self.view.addSubview(uiView_card0)

                // add label
                var card0Info: [String:String] = UserDefaults.standard.object(forKey: "card0") as? [String:String] ?? [:]
                let name0 = UILabel(frame: CGRect(x: 113, y: 24, width: 180, height: 40))
                let company0 = UILabel(frame: CGRect(x: -8, y: 79, width: 183, height: 17))
                let position0 = UILabel(frame: CGRect(x: 201, y: 79, width: 182, height: 17))
                let phone0 = UILabel(frame: CGRect(x: -8, y: 114, width: 183, height: 17))
                let email0 = UILabel(frame: CGRect(x: 201, y: 113, width: 182, height: 17))
                name0.textAlignment = NSTextAlignment.center
                company0.textAlignment = NSTextAlignment.center
                position0.textAlignment = NSTextAlignment.center
                phone0.textAlignment = NSTextAlignment.center
                email0.textAlignment = NSTextAlignment.center
                name0.text = card0Info["name0"]
                name0.font = UIFont(name: "Futura",
                size: 29.0)
                company0.text = card0Info["company0"]
                position0.text = card0Info["position0"]
                phone0.text = card0Info["phone0"]
                email0.text = card0Info["email0"]
                uiView_card0.addSubview(name0)
                uiView_card0.addSubview(company0)
                uiView_card0.addSubview(position0)
                uiView_card0.addSubview(phone0)
                uiView_card0.addSubview(email0)
            }
//                for (name, path) in card1Info {
//                    let label = UILabel(frame: CGRect(x: 30, y: yAxis, width: 300, height: 200))
//                    label.textAlignment = NSTextAlignment.center
//                    self.view.addSubview(label)
//                    label.text = path
//                    yAxis += 20
//                    print("key: '\(name)', value: '\(path)'")
//                }
            }
            
        }

    override func viewDidLoad() {
        super.viewDidLoad()

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
