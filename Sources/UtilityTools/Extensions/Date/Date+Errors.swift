//
//  Date+Errors.swift
//
//
//  Created by Victor Kreniski on 03/01/24.
//

import Foundation

extension Date {
    enum Errors: Error, Equatable {
        case failureToRetrieve(components: Set<Calendar.Component>, date: Date)
    }
}
