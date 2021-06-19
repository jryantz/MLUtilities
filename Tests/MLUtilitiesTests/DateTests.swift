//
//  DateTests.swift
//  
//
//  Created by Jon Yantz on 6/19/21.
//

import XCTest
@testable import MLUtilities

final class DateTests: XCTestCase {
    
    func testConversion() {
        let dateString = "1995-02-16"
        let dateFormat = "yyyy-MM-dd"
        
        let test = Date.parse(dateString, format: dateFormat).string(dateFormat)
        XCTAssertEqual(test, dateString)
    }
    
    func testYear() {
        let dateString = "1995-02-16"
        let dateFormat = "yyyy-MM-dd"
        
        let test = Date.parse(dateString, format: dateFormat).year
        XCTAssertEqual(test, 1995)
    }
    
    func testMonth() {
        let dateString = "1995-02-16"
        let dateFormat = "yyyy-MM-dd"
        
        let test = Date.parse(dateString, format: dateFormat).month
        XCTAssertEqual(test, 2)
    }
    
}
