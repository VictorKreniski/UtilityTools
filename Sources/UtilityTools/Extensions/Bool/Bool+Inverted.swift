//
//  Bool+Inverted.swift
//
//
//  Created by Victor Kreniski on 21/03/24.
//

import Foundation

extension Bool {
    var inverted: Self {
        get { !self }
        set { self = !newValue }
    }
}
