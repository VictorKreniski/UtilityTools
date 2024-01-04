//
//  Date+IsToday.swift
//
//  Created by Victor Kreniski on 18/12/23.
//

import Foundation

extension Date {
    func isToday(calendar: Calendar = .current) -> Bool {
        calendar.isDateInToday(self)
    }
}
