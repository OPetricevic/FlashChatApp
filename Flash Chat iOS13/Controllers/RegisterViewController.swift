//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Omar Petričević on 12.03.2023..
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

      

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text{
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                     if let e = error {
                         print(e.localizedDescription) // daje feedback o erroru
                    } else {
                        // Navigate to the ChatViewController
                        self.performSegue(withIdentifier: K.registerSegue, sender: self)
                    }
            }
        }
    }
}
