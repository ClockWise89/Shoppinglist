//
//  ViewController.swift
//  Shoppinglist
//
//  Created by Christopher Eliasson on 2017-04-27.
//  Copyright © 2017 Christopher Eliasson. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {

    var ref: FIRDatabaseReference?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = FIRDatabase.database().reference()
    }
    
    
    // MARK: - Actions
    
    @IBAction func signup(_ sender: Any) {
        
        FIRAuth.auth()?.createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
            self.ref?.child("users").child(user!.uid).child("email").setValue(user!.email)
        })
        
    }
}

