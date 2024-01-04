//
//  Date+createAllMonthDays.swift
//
//  Created by Victor Kreniski on 21/12/23.
//

import Foundation

extension Date {
    func createAllMonthDays(calendar: Calendar = .autoupdatingCurrent) -> [Date] {
        guard 
            let startDate = calendar.date(from: calendar.dateComponents([.year, .month], from: self)),
            let range = calendar.range(of: .day, in: .month, for: startDate)
        else { return [] }
                
        return range.compactMap { day in
            calendar.date(byAdding: .day, value: day - 1, to: startDate)
        }
    }
}
