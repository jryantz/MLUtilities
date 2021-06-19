//
//  UIColorTests.swift
//  
//
//  Created by Jon Yantz on 6/19/21.
//

import XCTest
@testable import MLUtilities

#if canImport(UIKit)
import UIKit

final class UIColorTests: XCTestCase {
    
    func testRGBA() {
        let (r, g, b, a) = UIColor.black.rgba
        
        XCTAssertEqual(r, 0.0)
        XCTAssertEqual(g, 0.0)
        XCTAssertEqual(b, 0.0)
        XCTAssertEqual(a, 1.0)
    }
    
    func testHEXString() {
        let test = UIColor.black.hexString
        XCTAssertEqual(test, "#000000")
    }
    
    func testRGBString() {
        let test = UIColor.black.rgbString
        XCTAssertEqual(test, "rgb(0, 0, 0)")
    }
    
    func testUIColorString() {
        let test = UIColor.black.uiColorString
        XCTAssertEqual(test, "UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)")
    }
    
    func testCGColorString() {
        let test = UIColor.black.cgColorString
        XCTAssertEqual(test, "CGColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)")
    }
    
}

#endif
