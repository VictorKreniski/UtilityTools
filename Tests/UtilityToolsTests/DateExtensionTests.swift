//
//  DateExtensionTests.swift
//
//
//  Created by Victor Kreniski on 03/01/24.
//

@testable import UtilityTools
import XCTest

final class DateExtensionTests: XCTestCase {
    
    func testCombineDate() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = try XCTUnwrap(dateFormatter.date(from: "2022-01-01 12:00:00"))
        let time = try XCTUnwrap(dateFormatter.date(from: "2022-01-01 18:30:45"))
        
        let combinedDate = try XCTUnwrap(date.combineDate(time: time))
        
        let components = Calendar.current.dateComponents([.day, .month, .year, .hour, .minute, .second], from: combinedDate)
        
        XCTAssertEqual(components.day, 1)
        XCTAssertEqual(components.month, 1)
        XCTAssertEqual(components.year, 2022)
        XCTAssertEqual(components.hour, 18)
        XCTAssertEqual(components.minute, 30)
        XCTAssertEqual(components.second, 45)
    }
    
    func testCreateAllMonthDays() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let date = try XCTUnwrap(dateFormatter.date(from: "2022-01-15"))
        
        let allMonthDays = date.createAllMonthDays()
        
        XCTAssertEqual(allMonthDays.count, 31)
        
        let components = Calendar.current.dateComponents([.year, .month], from: date)
        
        for (index,day) in Array(allMonthDays.enumerated()) {
            let dayComponents = Calendar.current.dateComponents([.year, .month, .day], from: day)
            XCTAssertEqual(dayComponents.day, index + 1)
            XCTAssertEqual(dayComponents.year, components.year)
            XCTAssertEqual(dayComponents.month, components.month)
        }
    }
    
    func testEndOfDay() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = try XCTUnwrap(dateFormatter.date(from: "2022-01-15 12:34:56"))
        
        let endOfDay = try XCTUnwrap(date.endOfDay())
        
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: endOfDay)
        
        XCTAssertEqual(components.year, 2022)
        XCTAssertEqual(components.month, 1)
        XCTAssertEqual(components.day, 15)
        XCTAssertEqual(components.hour, 23)
        XCTAssertEqual(components.minute, 59)
        XCTAssertEqual(components.second, 59)
    }
    
    func testGenerateWeekDates() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let startDate = try XCTUnwrap(dateFormatter.date(from: "2022-01-01")?.startOfWeek())
        let endDate = try XCTUnwrap(dateFormatter.date(from: "2022-01-31"))
        
        let weeklyDates = try XCTUnwrap(endDate.generateWeekDates(since: startDate))
        
        XCTAssertEqual(weeklyDates.count, 6)
        
        for weekDates in weeklyDates {
            XCTAssertEqual(weekDates.count, 7)
            
            for (index, date) in Array(weekDates.enumerated()) {
                let weekday = Calendar.current.component(.weekday, from: date)
                XCTAssertEqual(index + 1, weekday)
            }
        }
    }
    
    func testIsAtLeastToday() {
        let today = Date.now
        let futureDate = Date.distantFuture
        let pastDate = Date.distantPast
        
        XCTAssertFalse(futureDate.isAtLeastToday())
        XCTAssertTrue(today.isAtLeastToday())
        XCTAssertTrue(pastDate.isAtLeastToday())
    }
    
    func testIsBiggerThanToday() {
        let today = Date()
        let futureDate = Date.distantFuture
        let pastDate = Date.distantPast
        
        XCTAssertFalse(today.isBiggerThanToday())
        XCTAssertTrue(futureDate.isBiggerThanToday())
        XCTAssertFalse(pastDate.isBiggerThanToday())
    }
    
    func testIsToday() {
        let today = Date.now
        let otherDate = Date.distantFuture
        
        XCTAssertTrue(today.isToday())
        XCTAssertFalse(otherDate.isToday())
    }
    
    func testStartOfDay() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let originalDate = try XCTUnwrap(dateFormatter.date(from: "2022-01-15 12:34:56"))
        
        let startOfDay = originalDate.startOfDay()
        
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: startOfDay)
        
        XCTAssertEqual(components.year, 2022)
        XCTAssertEqual(components.month, 1)
        XCTAssertEqual(components.day, 15)
        XCTAssertEqual(components.hour, 0)
        XCTAssertEqual(components.minute, 0)
        XCTAssertEqual(components.second, 0)
    }
    
    func testWeekComponents() {
        XCTAssertEqual(Date.weekComponents, [.yearForWeekOfYear, .weekOfYear])
    }
    
    func testStartOfWeek() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let originalDate = try XCTUnwrap(dateFormatter.date(from: "2022-01-01 15:34:56"))
        
        let expectedDate = try XCTUnwrap(dateFormatter.date(from: "2021-12-26 00:00:00"))
        
        XCTAssertEqual(originalDate.startOfWeek(), expectedDate)
    }
}

