//
//  StringExtension.swift
//  Shoppinglist
//
//  Created by Christopher Eliasson on 2017-04-29.
//  Copyright © 2017 Christopher Eliasson. All rights reserved.
//

import Foundation


extension String {

    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localizedWith(arg: String) -> String {
        return String(format: NSLocalizedString(self, comment: ""), arg)
    }
    
    func localizedWith(args: [String]) -> String {
        return String(format: NSLocalizedString(self, comment: ""), arguments: args)
    }
}
