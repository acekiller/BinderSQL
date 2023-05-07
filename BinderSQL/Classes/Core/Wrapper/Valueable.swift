//
//  Valueable.swift
//  BinderSQL
//
//  Created by Mars Scala on 2023/5/7.
//

import Foundation

public enum ValueType: String {
    case int
    case Int64
    case Double
    case Date
    case Text
    
    func valueIsValid() -> Bool {
        return true
    }
}

public protocol Valueable {
    var valueType: String { get }
}
