//
//  Date+GenerateWeekDates.swift
//
//  Created by Victor Kreniski on 18/12/23.
//

import Foundation

extension Date {
    func generateWeekDates(since startOfWeek: Date, calendar: Calendar = .autoupdatingCurrent) -> [[Date]]? {
        let endDate = self
                        
        var weeklyDates: [[Date]] = []
        
        var currentDatePointer = startOfWeek
        
        while currentDatePointer <= endDate {
            var weekDates: [Date] = []
            for day in 0..<7 {
                if let currentDay = calendar.date(byAdding: .day, value: day, to: currentDatePointer) {
                    weekDates.append(currentDay)
                }
            }
            
            if let nextWeek = calendar.date(byAdding: .weekOfYear, value: 1, to: currentDatePointer) {
                currentDatePointer = nextWeek
            }
            
            weeklyDates.append(weekDates)
        }
        
        return weeklyDates
    }
}
