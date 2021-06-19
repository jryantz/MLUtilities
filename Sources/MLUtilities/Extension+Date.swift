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
    
    /// Returns a string representation of the date with the provided format.
    ///
    /// Format Options:
    ///
    /// Year
    /// ```
    /// Y       2020    // Year, no padding
    /// YY      20      // Year, two digits (padding with a zero if necessary)
    /// YYYY    2020    // Year, minimum of four digits (padding with zeros if necessary)
    /// ```
    ///
    /// Month
    /// ```
    /// M       2           // The numeric month of the year. A single M will use ‘1’ for January.
    /// MM      02          // The numeric month of the year. A double M will use ’01’ for January.
    /// MMM     "Feb"       // The shorthand name of the month
    /// MMMM    "February"  // Full name of the month
    /// MMMMM   "F"         // Narrow name of the month
    /// ```
    ///
    /// Day
    /// ```
    /// d       26                          // The day of the month. A single d will use 1 for January 1st.
    /// dd      26                          // The day of the month. A double d will use 01 for January 1st.
    /// F       "4th Wednesday in December" // The day of week in the month
    /// E       "Weds"                      // The day of week in the month
    /// EEEE    "Wednesday"                 // The full name of the day
    /// EEEEE   "W"                         // The narrow day of week
    /// ```
    ///
    /// Hour
    /// ```
    /// h   5       // The 12-hour hour.
    /// hh  05      // The 12-hour hour padding with a zero if there is only 1 digit
    /// H   17      // The 24-hour hour.
    /// HH  17      // The 24-hour hour padding with a zero if there is only 1 digit.
    /// a   "PM"    // AM / PM for 12-hour time formats
    /// ```
    ///
    /// Minute
    /// ```
    /// m   25  // The minute, with no padding for zeroes.
    /// mm  25  // The minute with zero padding.
    /// ```
    ///
    /// Second
    /// ```
    /// s   1   // The seconds, with no padding for zeroes.
    /// ss  01  // The seconds with zero padding.
    /// ```
    ///
    /// - Parameter format: The output format.
    /// - Returns: A string representation of `Date`.
    ///
    func string(_ format: String = "yyyy-MM-dd") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    /// Returns a date representation of the specified string with the provided format.
    ///
    /// Format Options:
    ///
    /// Year
    /// ```
    /// Y       2020    // Year, no padding
    /// YY      20      // Year, two digits (padding with a zero if necessary)
    /// YYYY    2020    // Year, minimum of four digits (padding with zeros if necessary)
    /// ```
    ///
    /// Month
    /// ```
    /// M       2           // The numeric month of the year. A single M will use ‘1’ for January.
    /// MM      02          // The numeric month of the year. A double M will use ’01’ for January.
    /// MMM     "Feb"       // The shorthand name of the month
    /// MMMM    "February"  // Full name of the month
    /// MMMMM   "F"         // Narrow name of the month
    /// ```
    ///
    /// Day
    /// ```
    /// d       26                          // The day of the month. A single d will use 1 for January 1st.
    /// dd      26                          // The day of the month. A double d will use 01 for January 1st.
    /// F       "4th Wednesday in December" // The day of week in the month
    /// E       "Weds"                      // The day of week in the month
    /// EEEE    "Wednesday"                 // The full name of the day
    /// EEEEE   "W"                         // The narrow day of week
    /// ```
    ///
    /// Hour
    /// ```
    /// h   5       // The 12-hour hour.
    /// hh  05      // The 12-hour hour padding with a zero if there is only 1 digit
    /// H   17      // The 24-hour hour.
    /// HH  17      // The 24-hour hour padding with a zero if there is only 1 digit.
    /// a   "PM"    // AM / PM for 12-hour time formats
    /// ```
    ///
    /// Minute
    /// ```
    /// m   25  // The minute, with no padding for zeroes.
    /// mm  25  // The minute with zero padding.
    /// ```
    ///
    /// Second
    /// ```
    /// s   1   // The seconds, with no padding for zeroes.
    /// ss  01  // The seconds with zero padding.
    /// ```
    ///
    /// - Parameters:
    ///   - string: A date string.
    ///   - format: The format of the provided date string.
    /// - Returns: A date object based on the provided string.
    ///
    static func parse(_ string: String, format: String = "yyyy-MM-dd") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = NSTimeZone.default
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: string)!
    }
    
}
