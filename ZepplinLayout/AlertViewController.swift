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
    var onCloseClosure: (() -> Void)? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onImproveAction(_ sender: Any) {
        if let close = onCloseClosure{
            close()
        }
        
    }
    deinit {
        print("AlertViewController deInit")
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
