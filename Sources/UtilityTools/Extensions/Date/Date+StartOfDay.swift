//
//  Date+StartOfDay.swift
//
//  Created by Victor Kreniski on 18/11/23.
//

import Foundation

extension Date {
    func startOfDay(calendar: Calendar = .current) -> Date {
        calendar.startOfDay(for: self)
    }
}
