//
//  SplashViewController.swift
//  Yup
//
//  Created by Pamela Ocampo on 7/7/14.
//  Copyright (c) 2014 Pamela Ocampo. All rights reserved.
//

import UIKit

class SplashViewController : UIViewController {
    @IBOutlet var nopeSignUpButton : UIButton?
    @IBOutlet var yepLoginButton : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didPressLoginButton(sender: UIButton){
        println("pressed yup")
        
    }
    @IBAction func didPressSignUpButton(sender: UIButton){
        println("pressed nope")
    }
    
}