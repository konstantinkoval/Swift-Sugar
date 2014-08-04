//
//  StringExtensions.swift
//  SwiftSugar
//
//  Created by Ruben Roques on 05/06/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

public extension String {
    
    public var length :Int
    {
    get{
        return countElements(self)
    }
    }
    
    public static func join(strings: String...)->String
    {
        var result: String=""
        for value in strings{
            result += value
        }
        return result
    }
    
    public static func join(array: Array<String>)->String
    {
        var result: String=""
        for value in array{
            result += value
        }
        return result
    }
    
    public func split(delimiter: Character = " ") -> [String] {
        return Swift.split(self) { (char: Character) -> Bool in
            char == delimiter
        }
    }
    
    public func toCharacterArray()->[Character]{
        var resultArray = [Character]()
        
        for char in self{
            resultArray.append(char)
        }
        
        return resultArray
    }
    
    
    public func indexOfString(string : String)->Int?{
        if countElements(self)==0 || countElements(string)==0 {
            return nil
        }
        
        if countElements(self) < countElements(string){
            return nil
        }
        
        var numberIt : Int = 0
        var selfCharArray = self.toCharacterArray()
        var stringCharArray = string.toCharacterArray()
        
        for (index,charOut) in enumerate(selfCharArray){
            
            for charIn in stringCharArray{
                
                if charIn==selfCharArray[index+numberIt] {
                    numberIt++
                    if numberIt==countElements(string){
                        return index
                    }
                }
                else{
                    numberIt=0
                    break
                }
            }
        }
        return nil
    }
    
    public func reverse() -> String {
        return self.toCharacterArray().reverse().reduce("", combine: {$0 + $1})
    }
}

public extension String{
    public subscript(index: Int) -> String? {
        var castedIndex:Int = index
            if index<0{
                castedIndex = countElements(self)+index
            }
            
            if (castedIndex>countElements(self) || castedIndex<0){
                return nil
            }
            
            for (charIndex,charValue) in enumerate(self){
                if(charIndex == castedIndex){
                    return String(charValue)
                }
            }
            return nil
    }
    
    
    public subscript(startIndex: Int,endIndex: Int) -> String? {
        var returnString :String = ""
            for (charIndex,charValue) in enumerate(self){
                if(charIndex >= startIndex &&  charIndex <= endIndex){
                    returnString = returnString + String(charValue)
                }
            }
            
            if returnString.isEmpty{
                return nil
            }
            else{
                return returnString
            }
    }
}