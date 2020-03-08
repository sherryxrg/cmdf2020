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
//                // --- load the cards
//                // programatically create a view
//                let swapedCard1=UIView(frame: CGRect(x: 40, y: 100, width: 391, height: 190))
//                swapedCard1.backgroundColor=UIColor.red
//                swapedCard1.layer.cornerRadius=25
                
                
                // Add UIView as a Subview
//                self.view.addSubview(swapedCard1)
//
                // add label
                var card1Info: [String:String] = UserDefaults.standard.object(forKey: "card1") as? [String:String] ?? [:]
                let name1 = UILabel(frame: CGRect(x: 30, y: 20, width: 300, height: 200))
                let company1 = UILabel(frame: CGRect(x: 30, y: 40, width: 300, height: 200))
                let position1 = UILabel(frame: CGRect(x: 30, y: 60, width: 300, height: 200))
                let phone1 = UILabel(frame: CGRect(x: 30, y: 80, width: 300, height: 200))
                let email1 = UILabel(frame: CGRect(x: 30, y: 100, width: 300, height: 200))
                name1.textAlignment = NSTextAlignment.center
                company1.textAlignment = NSTextAlignment.center
                position1.textAlignment = NSTextAlignment.center
                phone1.textAlignment = NSTextAlignment.center
                email1.textAlignment = NSTextAlignment.center
                self.view.addSubview(name1)
                self.view.addSubview(company1)
                self.view.addSubview(position1)
                self.view.addSubview(phone1)
                self.view.addSubview(email1)
                name1.text = card1Info["name1"]
                company1.text = card1Info["company1"]
                position1.text = card1Info["position1"]
                phone1.text = card1Info["phone1"]
                email1.text = card1Info["email1"]
                
                
                
                
//
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
