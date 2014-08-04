//
//  IntExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

public extension Int {
    public func times(repeat: () -> ()){
        for _ in 0..<self {
            repeat()
        }
    }
    
    public func timesWithIndex(repeat: (index:Int) -> ()){
        for i in 0..<self {
            repeat(index: i)
        }
    }
    
    public func upTo(upperLimit:Int, doTask:(number:Int) -> ()){
        for i in self..<upperLimit{
            doTask(number: i)
        }
    }
    
    public func downTo(lowerLimit:Int, doTask:(number:Int) -> ()){
        var placeHolder = self
        
        for var i : Int = lowerLimit; i < placeHolder; placeHolder-- {
            doTask(number: placeHolder)
        }
    }
}
