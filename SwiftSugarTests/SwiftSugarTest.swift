//
//  SwiftSugarTest.swift
//  SwiftSugar
//
//  Created by Konstantin Koval on 21/07/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class SwiftSugarTest: XCTestCase {

    func testFirstElemen() {
        var empty :[Int] = []
        var full :[Int] = [1, 2]
        
        XCTAssertNil(firstElement(empty), "shold be nil")
        XCTAssertTrue(firstElement(full) == 1, "shold be 1")
    }
    
    func testLastElement() {
        
        var empty :[Int] = []
        var full :[Int] = [1, 2]
        XCTAssertNil(lastElemen(empty), "shold be nil")
        XCTAssertTrue(lastElemen(full) == 2, "shold be 2")
    }

}
