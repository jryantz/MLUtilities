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

public extension Color {
    public var uiColor: UIColor { .init(self) }
    
    public var rgba: RGBA {
        return uiColor.rgba
    }
}
#endif

#if canImport(AppKit)
import AppKit

public extension Color {
    public var nsColor: NSColor { .init(self) }
    
    public var rgba: RGBA {
        return nsColor.rgba
    }
}
#endif

public extension Color {
    public var hexaRGB: String? {
        let (red, green, blue, _) = rgba
        return String(format: "#%02x%02x%02x",
            Int(red * 255),
            Int(green * 255),
            Int(blue * 255))
    }
    
    public var hexaRGBA: String? {
        let (red, green, blue, alpha) = rgba
        return String(format: "#%02x%02x%02x%02x",
            Int(red * 255),
            Int(green * 255),
            Int(blue * 255),
            Int(alpha * 255))
    }
}
