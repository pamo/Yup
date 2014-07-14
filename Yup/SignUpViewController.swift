//
//  SignUpViewController.swift
//  Yup
//
//  Created by Pamela Ocampo on 7/7/14.
//  Copyright (c) 2014 Pamela Ocampo. All rights reserved.
//

import UIKit

class SignUpViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameField : UITextField?
    @IBOutlet var emailField : UITextField?
    @IBOutlet var passwordField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField!.delegate = self
        emailField!.delegate = self
        passwordField!.delegate = self
        
        var tapGesture = UITapGestureRecognizer(target: self, action: "didTapSignup")
        self.view.addGestureRecognizer(tapGesture)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapSignup(sender: UIButton){
        let username = usernameField!.text
        let email = emailField!.text
        let password = passwordField!.text
        
        if (countElements(username!) < 4 || countElements(password!) < 4) {
                var warningAlertView:UIAlertView = UIAlertView(title: "Invalid Entry", message: "Username and password must be at least 4 characters long", delegate: nil, cancelButtonTitle: "OK")
                warningAlertView.show()
        } else if (countElements(email!) < 8) {
                var warningAlertView:UIAlertView = UIAlertView(title: "Invalid Entry", message: "Please enter an email", delegate: nil, cancelButtonTitle: "OK")
                warningAlertView.show()
        } else {
            var user = PFUser()
            user.username = username
            user.email = email
            user.password = password

            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, error: NSError!) -> Void in
                if !error {
                    self.performSegueWithIdentifier("signUpToMain", sender:self)
                } else {
                    let errorString = error.userInfo["error"] as NSString
                    var errorAlertView:UIAlertView = UIAlertView(title: "Error", message: errorString, delegate: nil, cancelButtonTitle: "OK")
                    errorAlertView.show()
                }
            }
            
        }
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}