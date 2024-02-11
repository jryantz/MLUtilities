//
//  ColorTests.swift
//  
//
//  Created by Jon Yantz on 2/11/24.
//

import XCTest
@testable import MLUtilities

import SwiftUI

final class ColorTests: XCTestCase {
    func testRGBA() {
        let (r, g, b, a) = Color.black.rgba
        
        XCTAssertEqual(r, 0.0)
        XCTAssertEqual(g, 0.0)
        XCTAssertEqual(b, 0.0)
        XCTAssertEqual(a, 1.0)
    }
}
