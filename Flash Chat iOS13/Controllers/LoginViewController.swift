//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Omar Petričević on 13.03.2023..
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth



class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                // ...
            }
        }
    }
    
}
