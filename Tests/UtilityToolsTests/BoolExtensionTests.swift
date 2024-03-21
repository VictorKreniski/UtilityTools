//
//  BoolExtensionTests.swift
//  
//
//  Created by Victor Kreniski on 21/03/24.
//

import XCTest

final class BoolExtensionTests: XCTestCase {

    func testBoolInvertedWhenTrue() {
        XCTAssertFalse(true.inverted)
    }
    
    func testBoolInvertedWhenFalse() {
        XCTAssertTrue(false.inverted)
    }
}
