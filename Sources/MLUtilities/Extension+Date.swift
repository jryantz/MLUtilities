//
//  Extension+Date.swift
//  
//
//  Created by Jon Yantz on 6/19/21.
//

import Foundation

extension Date {
    
    // MARK: - Date Component Accessors
    
    /// Returns the year as an Int.
    ///
    /// ```
    /// Date("2021-06-19") -> 2021
    /// ```
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    /// Returns the month as an Int.
    ///
    /// ```
    /// Date("2021-06-19") -> 6
    /// ```
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
}
