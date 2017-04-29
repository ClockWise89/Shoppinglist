//
//  ErrorManager.swift
//  Shoppinglist
//
//  Created by Christopher Eliasson on 2017-04-29.
//  Copyright © 2017 Christopher Eliasson. All rights reserved.
//

import UIKit

class ErrorManager {
    static let shared = ErrorManager()
    
    
    func presentAlert(title: String, message: String, firstActionTitle: String? = nil, secondActionTitle: String? = nil, firstActionHandler: ((UIAlertAction)-> Void)? = nil, secondActionHandler: ((UIAlertAction)-> Void)? = nil, presenter: UIViewController) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        if let secondActionTitle = secondActionTitle {
            let secondAction = UIAlertAction(title: secondActionTitle.localized, style: UIAlertActionStyle.default, handler: secondActionHandler)
            alertController.addAction(secondAction)
        }
        
        let firstAction = UIAlertAction(title: firstActionTitle != nil ? firstActionTitle : "Ok", style: .default, handler: firstActionHandler)
        alertController.addAction(firstAction)
        
        presenter.present(alertController, animated: true, completion: nil)
    }
    
}
