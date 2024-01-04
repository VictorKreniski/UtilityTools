//
//  Date+CombineDateTime.swift
//
//  Created by Victor Kreniski on 03/01/24.
//

import Foundation

extension Date {
    func combineDate(time: Date, calendar: Calendar = .autoupdatingCurrent) -> Date? {
        let dateComponents = calendar.dateComponents([.day, .month, .year], from: self)
        let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)
        
        var newComponents = DateComponents()
        
        newComponents.timeZone = .current
        newComponents.day = dateComponents.day
        newComponents.month = dateComponents.month
        newComponents.year = dateComponents.year
        newComponents.hour = timeComponents.hour
        newComponents.minute = timeComponents.minute
        newComponents.second = timeComponents.second
        
        return calendar.date(from: newComponents)
    }
}
