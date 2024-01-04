//
//  Date+EndOfDay.swift
//
//  Created by Victor Kreniski on 18/11/23.
//

import Foundation

extension Date {
    func endOfDay(calendar: Calendar = .current) -> Date? {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return calendar.date(byAdding: components, to: startOfDay(calendar: calendar))
    }
}
