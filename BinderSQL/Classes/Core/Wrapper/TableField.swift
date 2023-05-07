//
//  TableField.swift
//  BinderSQL
//
//  Created by Mars Scala on 2023/5/7.
//

import Foundation

@propertyWrapper
public struct TableField<T> {
    internal var value: T?
    internal var type: ValueType
    internal var nullable: Bool
    internal var primaryKey: Bool
    
    init(type: ValueType, value: T?, nullable: Bool = true, primaryKey: Bool = false) {
        self.value = value
        self.type = type
        self.nullable = nullable
        self.primaryKey = primaryKey
    }
    
    public var wrappedValue: T? {
        get {
            return value
        }
        set {
            if primaryKey {
                assert(newValue != nil, "Primary key can not null")
            }
            if !nullable {
                assert(newValue != nil, "the column can not null")
            }
            value = newValue
        }
    }
}

fileprivate extension TableField {
    
}
