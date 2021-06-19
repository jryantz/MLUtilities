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
    
    func testDate() {
        let dateString = "1995-02-16"
        let dateFormat = "yyyy-MM-dd"
        
        let test = Date.parse(dateString, format: dateFormat).date
        XCTAssertEqual(test, 16)
    }
    
    /// Tests that the millisecondsSince1970 returns the correct number for:
    ///
    /// - = 2020-09-05 11:45:00 GMT-0400 (EDT)
    /// - = 2020-09-05 15:45:00 GMT+0000
    /// - = 1599320700 (Seconds)
    /// - = 1599320700000 (Milliseconds)
    func testMillisecondsSince1970() {
        let dateString = "2020-09-05 11:45:00"
        let dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = Date.parse(dateString, format: dateFormat)
        let test = date.millisecondsSince1970
        XCTAssertEqual(test, 1599320700000)
    }
    
}
