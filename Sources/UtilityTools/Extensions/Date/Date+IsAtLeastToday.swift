//
//  Date+IsAtLeastToday.swift
//
//  Created by Victor Kreniski on 19/12/23.
//

import Foundation

extension Date {
    func isAtLeastToday(calendar: Calendar = .autoupdatingCurrent) -> Bool {
        startOfDay(calendar: calendar) <= .now.startOfDay(calendar: calendar)
    }
    
    func isBiggerThanToday(calendar: Calendar = .autoupdatingCurrent) -> Bool {
        !isAtLeastToday(calendar: calendar)
    }
}
