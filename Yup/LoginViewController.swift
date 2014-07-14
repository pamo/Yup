//
//  LoginViewController.swift
//  Yup
//
//  Created by Pamela Ocampo on 7/7/14.
//  Copyright (c) 2014 Pamela Ocampo. All rights reserved.
//

import UIKit

class LoginViewController : UIViewController, UITextFieldDelegate {
    @IBOutlet var usernameField : UITextField?
    @IBOutlet var passwordField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField!.delegate = self
        passwordField!.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapLogin(sender: UIButton){
        let username = usernameField!.text
        let password = passwordField!.text
        PFUser.logInWithUsernameInBackground(username, password: password, block: {
            user, error in
            if (user) {
                self.performSegueWithIdentifier("loginToMain", sender:self)
                println("You're in, yo!")
            } else {
                //Something bad has ocurred
                var errorString:NSString = error.userInfo["error"] as NSString
                var errorAlertView:UIAlertView = UIAlertView(title: "Error", message: errorString, delegate: nil, cancelButtonTitle: "OK")
                errorAlertView.show()
            }
        })
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
