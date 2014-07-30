//
//  SwiftSugar.swift
//  SwiftSugar
//
//  Created by Rui Peres on 17/07/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

public func zip<X,Y>(listX : [X], listY : [Y]) -> [(X,Y)] {
    
    if listX.count == 0 || listY.count == 0 {
        return []
    }
    
    return [(listX[0],listY[0])] + zip(listX.remove(1), listY.remove(1))
}

public func firstElement<C>(collection : [C]) -> C? {
    return collection.isEmpty ? nil : collection[0]
}

public func lastElemen<C>(collection : [C]) -> C? {
    return collection.isEmpty ? nil : collection[collection.endIndex - 1]
}

public func remove <T: Equatable>(remove: [T], #from : [T] ) -> Array<T> {
  
    var res = Array<T>()
    for element in from {
        if !contains(remove, element) {
            res += element
        }
    }
    return res
}
