//
//  NSColor.swift
//
//
//  Created by Jon Yantz on 2/11/24.
//

#if canImport(AppKit)
import AppKit

extension NSColor {    
    /// Returns a tuple containing the color components.
    ///
    /// ```
    /// UIColor() -> (r, g, b, a)
    /// ```
    var rgba: RGBA {
        var (r, g, b, a): RGBA = (0, 0, 0, 0)
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r, g, b, a)
    }
    
    /// Returns a hex string representing the color.
    var hexString: String {
        let (r, g, b, _) = self.rgba
        return String(format: "#%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
    }
    
    /// Returns an RGB string representing the color.
    var rgbString: String {
        let (r, g, b, _) = self.rgba
        return "rgb(\(Int(round(r * 255))), \(Int(round(g * 255))), \(Int(round(b * 255))))"
    }
    
    /// Returns a UIColor string representing the color.
    var uiColorString: String {
        let (r, g, b, _) = self.rgba
        return "UIColor(red: \(r), green: \(g), blue: \(b), alpha: 1.0)"
    }
    
    /// Returns a CGColor string representing the color.
    var cgColorString: String {
        let (r, g, b, _) = self.rgba
        return "CGColor(red: \(r), green: \(g), blue: \(b), alpha: 1.0)"
    }
}
#endif
