//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseBackground = Color("baseBackground")
    static let baseLtGray = Color("baseLtGray")
    static let basePurple = Color("basePurple")
    static let baseBlack = Color("baseBlack")
}

extension UIColor {
    static let baseBackground = Color("baseBackground")
    static let baseLtGray = Color("baseLtGray")
    static let basePurple = Color("basePurple")
    static let baseBlack = Color("baseBlack")

    private static func Color(_ key: String) -> UIColor {
        if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
            return color
        }
        
        return .black
    }
}

