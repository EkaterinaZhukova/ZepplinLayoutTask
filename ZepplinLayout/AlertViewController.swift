//
//  AlertViewController.swift
//  ZepplinLayout
//
//  Created by Екатерина on 11/4/18.
//  Copyright © 2018 Екатерина. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    
    @IBOutlet weak var improveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onImproveAction(_ sender: Any) {
        self.removeFromParent()
        self.view.removeFromSuperview()
        self.willMove(toParent: nil)
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
