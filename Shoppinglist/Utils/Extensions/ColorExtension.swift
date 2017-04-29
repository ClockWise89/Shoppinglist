//
//  ColorExtension.swift
//  Shoppinglist
//
//  Created by Christopher Eliasson on 2017-04-29.
//  Copyright © 2017 Christopher Eliasson. All rights reserved.
//

import UIKit

enum SLColor: String {
    case matte = "#414141"
    case fresh = "#CCDECB"
    case watermelon = "#FF6A5C"
    case teal = "#056571"
    case clean = "#E8E8E8"
}

extension UIColor {
    
    fileprivate convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.characters.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
    
    fileprivate convenience init(slColor: SLColor) {
        self.init(hexString: slColor.rawValue)
    }
    
    static func randomColor() -> UIColor {
        let red = Float(arc4random()) /  Float(UInt32.max)
        let green = Float(arc4random()) /  Float(UInt32.max)
        let blue = Float(arc4random()) /  Float(UInt32.max)
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    }
    
    class func slColor(_ slColor: SLColor) -> UIColor {
        return UIColor(slColor: slColor)
    }
    
}
