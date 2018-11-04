//
//  ViewController.swift
//  ZepplinLayout
//
//  Created by Екатерина on 10/30/18.
//  Copyright © 2018 Екатерина. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blurEfffect: UIVisualEffectView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var needHelpButton: UIButton!
    
    @IBOutlet weak var childView: UIView!
    
    
    @IBOutlet weak var childViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        if let font = UIFont(name: "Montserrat-Bold", size: 11){
            segmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font],
                                                    for: .normal)
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
            
        }
        myView.layer.cornerRadius = 10
        needHelpButton.layer.cornerRadius = 10
        
        needHelpButton.layer.shadowColor = UIColor.white.cgColor
        needHelpButton.layer.shadowOffset = CGSize(width: 5, height:5)
        needHelpButton.layer.shadowRadius = 10
        needHelpButton.layer.shadowOpacity = 0.6
        
        tabBar.selectedItem = tabBar.items?[2]
        
    }
    @IBAction func needHelpAction(_ sender: Any) {
        self.blurEfffect.isHidden = false
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "alertViewController") as? AlertViewController{
            
            
            controller.view.layer.cornerRadius = 20
            controller.view.frame.size = CGSize(width: 261, height: 261)
            controller.view.center = self.view.center
            controller.onCloseClosure = {[weak controller,weak self] in
                controller?.removeFromParent()
                controller?.view.removeFromSuperview()
                controller?.willMove(toParent: nil)
               
                self?.blurEfffect.isHidden = true
            }
         
            self.addChild(controller)
            self.view.addSubview(controller.view)
            self.didMove(toParent: self)
            
        }
        
        
    }
}

