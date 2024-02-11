//
//  Color.swift
//
//
//  Created by Jon Yantz on 2/11/24.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
import UIKit

extension Color {
    var uiColor: UIColor { .init(self) }
    
    var rgba: RGBA {
        return uiColor.rgba
    }
}
#endif

#if canImport(AppKit)
import AppKit

extension Color {
    var nsColor: NSColor { .init(self) }
    
    var rgba: RGBA? {
        return nsColor.rgba
    }
}
#endif

extension Color {    
    var hexaRGB: String? {
        let (red, green, blue, _) = rgba
        return String(format: "#%02x%02x%02x",
            Int(red * 255),
            Int(green * 255),
            Int(blue * 255))
    }
    
    var hexaRGBA: String? {
        let (red, green, blue, alpha) = rgba
        return String(format: "#%02x%02x%02x%02x",
            Int(red * 255),
            Int(green * 255),
            Int(blue * 255),
            Int(alpha * 255))
    }
}
