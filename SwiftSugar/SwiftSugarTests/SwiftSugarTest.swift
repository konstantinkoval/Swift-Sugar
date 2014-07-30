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
        let empty = [Int]()
        let full = [1, 2]
        
        XCTAssertNil(firstElement(empty), "shold be nil")
        XCTAssertTrue(firstElement(full) == 1, "shold be 1")
    }
    
    func testLastElement() {
        
        let empty = [Int]()
        let full = [1, 2]
        XCTAssertNil(lastElemen(empty), "shold be nil")
        XCTAssertTrue(lastElemen(full) == 2, "shold be 2")
    }
    func testRemove() {
        let ar = [1,1,2,2,3,3,4,5]
        XCTAssertTrue(remove([1,2,4], from: ar) == [3,3,5], "should be")
        XCTAssertTrue(remove([1,1,2,2,3,3,4,5], from: ar)  == [Int](), "should remove all")
        XCTAssertTrue(remove([], from: ar) == [1,1,2,2,3,3,4,5], "should not renove any")
    }
}
