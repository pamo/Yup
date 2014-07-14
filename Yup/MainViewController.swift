//
//  MainViewController.swift
//  Yup
//
//  Created by Pamela Ocampo on 7/7/14.
//  Copyright (c) 2014 Pamela Ocampo. All rights reserved.
//

import UIKit

class MainViewController : UIViewController {
    
    @IBOutlet var bannerLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome to Yup"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
