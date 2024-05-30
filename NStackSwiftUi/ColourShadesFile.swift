//
//  ColourShadesFile.swift
//  NStackSwiftUi
//
//  Created by Praveen on 30/05/24.
//

import Foundation
import SwiftUI

import SwiftUI
//
extension Color {
    
    func adjust(by percentage: CGFloat) -> Color {
        let uiColor = UIColor(self)
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return Color(red: min(max(red + percentage, 0), 1.0),
                     green: min(max(green + percentage, 0), 1.0),
                     blue: min(max(blue + percentage, 0), 1.0),
                     opacity: alpha)
    }
    
}

