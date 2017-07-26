//
//  MainVC.swift
//  TacoPOP
//
//  Created by Brian Marquis on 7/26/17.
//  Copyright © 2017 brimarq. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add drop shadow protocol 
        headerView.addDropShadow()
    }

}
