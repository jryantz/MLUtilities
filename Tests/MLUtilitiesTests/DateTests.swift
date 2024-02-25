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
        let testDate = Date.parse("1995-02-16", format: "yyyy-MM-dd")
        XCTAssertEqual(testDate.string("yyyy-MM-dd"), "1995-02-16")
    }
    
    func testYear() {
        let testDate = Date.parse("1995-02-16", format: "yyyy-MM-dd")
        XCTAssertEqual(testDate.year, 1995)
    }
    
    func testMonth() {
        let testDate = Date.parse("1995-02-16", format: "yyyy-MM-dd")
        XCTAssertEqual(testDate.month, 2)
    }
    
    func testDate() {
        let testDate = Date.parse("1995-02-16", format: "yyyy-MM-dd")
        XCTAssertEqual(testDate.date, 16)
    }
    
    func testStartOfDay() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-09-05 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfDay, expectedDate)
    }
    
    func testStartOfNextDay() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-09-06 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfNextDay, expectedDate)
    }
    
    func testStartOfWeekForSunday() {
        if Calendar.current.firstWeekday != 1 {
            return XCTAssertTrue(true)
        }
        
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-08-30 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfWeek, expectedDate)
    }
    
    func testStartOfWeekForMonday() {
        if Calendar.current.firstWeekday != 2 {
            return XCTAssertTrue(true)
        }
        
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-08-31 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfWeek, expectedDate)
    }
    
    func testStartOfNextWeekForSunday() {
        if Calendar.current.firstWeekday != 1 {
            return XCTAssertTrue(true)
        }
        
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-09-06 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfNextWeek, expectedDate)
    }
    
    func testStartOfNextWeekForMonday() {
        if Calendar.current.firstWeekday != 2 {
            return XCTAssertTrue(true)
        }
        
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-09-07 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfNextWeek, expectedDate)
    }
    
    func testStartOfMonth() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-09-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfMonth, expectedDate)
    }
    
    func testStartOfNextMonth() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-10-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfNextMonth, expectedDate)
    }
    
    func testStartOfPreviousMonth() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-08-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfPreviousMonth, expectedDate)
    }
    
    func testStartOfYear() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2020-01-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfYear, expectedDate)
    }
    
    func testStartOfNextYear() {
        let testDate = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let expectedDate = Date.parse("2021-01-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss")
        XCTAssertEqual(testDate.startOfNextYear, expectedDate)
    }
    
    /// Tests that the millisecondsSince1970 returns the correct number for:
    ///
    /// - = 2020-09-05 11:45:00 GMT-0400 (EDT)
    /// - = 2020-09-05 15:45:00 GMT+0000
    /// - = 1599320700 (Seconds)
    /// - = 1599320700000 (Milliseconds)
    func testMillisecondsSince1970() {
        let date = Date.parse("2020-09-05 11:45:00", format: "yyyy-MM-dd HH:mm:ss")
        let test = date.millisecondsSince1970
        XCTAssertEqual(test, 1599320700000)
    }
}
