//
//  NSColorTests.swift
//  
//
//  Created by Jon Yantz on 2/11/24.
//

import XCTest
@testable import MLUtilities

#if canImport(AppKit)
import AppKit

final class NSColorTests: XCTestCase {
    func testRGBA() {
        let (r, g, b, a) = NSColor.black.rgba
        
        XCTAssertEqual(r, 0.0)
        XCTAssertEqual(g, 0.0)
        XCTAssertEqual(b, 0.0)
        XCTAssertEqual(a, 1.0)
    }
    
    func testHEXString() {
        let test = NSColor.black.hexString
        XCTAssertEqual(test, "#000000")
    }
    
    func testRGBString() {
        let test = NSColor.black.rgbString
        XCTAssertEqual(test, "rgb(0, 0, 0)")
    }
    
    func testUIColorString() {
        let test = NSColor.black.uiColorString
        XCTAssertEqual(test, "UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)")
    }
    
    func testCGColorString() {
        let test = NSColor.black.cgColorString
        XCTAssertEqual(test, "CGColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)")
    }
}
#endif
