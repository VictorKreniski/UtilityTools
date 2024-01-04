//
//  Date+StartOfWeek.swift
//
//
//  Created by Victor Kreniski on 04/01/24.
//

import Foundation

extension Date {
    static var weekComponents: Set<Calendar.Component> {
        [.yearForWeekOfYear, .weekOfYear]
    }
    
    func startOfWeek(calendar: Calendar = .autoupdatingCurrent) -> Date? {
        calendar.date(from: calendar.dateComponents(Date.weekComponents, from: self))
    }
}
