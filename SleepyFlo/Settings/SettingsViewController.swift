//
//  SettingsViewController.swift
//  SleepyFlo
//
//  Created by mac on 19.12.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var setView: UIView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            navigationController?.navigationBar.barTintColor = UIColor.white
            self.tabBarController?.tabBar.isHidden = true
        imageView.image = UIImage(named: "image_profile")
        imageView.layer.borderWidth = 0
        imageView.layer.cornerRadius = imageView.frame.size.height/2
        imageView.clipsToBounds = true
        
        setView.layer.cornerRadius = 15
        setView.layer.masksToBounds = true
        
        }
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            self.tabBarController?.tabBar.isHidden = false
        }
}
