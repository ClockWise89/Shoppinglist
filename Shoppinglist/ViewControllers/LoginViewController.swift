//
//  LoginViewController.swift
//  Shoppinglist
//
//  Created by Christopher Eliasson on 2017-04-29.
//  Copyright © 2017 Christopher Eliasson. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var loginContainerView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var separatorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setLabels()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.styleView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    fileprivate func styleView() {
        self.view.backgroundColor = UIColor.slColor(.matte)
        
        self.headerLabel.font = UIFont.systemFont(ofSize: 40)
        self.headerLabel.textColor = UIColor.slColor(.watermelon)
        
        self.loginContainerView.backgroundColor = UIColor.clear
        self.loginTextField.backgroundColor = UIColor.clear
        self.loginTextField.textColor = UIColor.slColor(.clean)
        
        self.passwordTextField.backgroundColor = UIColor.clear
        self.passwordTextField.textColor = UIColor.slColor(.clean)
        
        self.separatorView.backgroundColor = UIColor.slColor(.clean)
        self.loginButton.setTitleColor(UIColor.slColor(.watermelon), for: .normal)
    }
    
    fileprivate func setLabels() {
        self.headerLabel.text = "Shopping List".localized
        self.loginTextField.placeholder = "E-mail".localized
        self.passwordTextField.placeholder = "Password".localized
        self.loginButton.setTitle("Log in".localized, for: .normal)
    }
    
    
    
    // MARK: - Actions
    
    @IBAction func loginPressed(_ sender: Any) {
        
    }
}
