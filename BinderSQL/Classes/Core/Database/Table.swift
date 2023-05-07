//
//  Table.swift
//  BinderSQL
//
//  Created by Mars Scala on 2023/4/7.
//

import Foundation

open class Table {
}

extension Table {
    /// <#Description#>
    /// - Returns: <#description#>
    public func tableSql() -> String {
        let mirror = Mirror(reflecting: self)
        let children = mirror.children.filter({ !($0.label?.isEmpty ?? true) && $0.value is TableField<Any> })
            .map({($0.label!, $0.value as! TableField<Any>)})
        return generateCreateTableSQL(fields: children)
    }
}

fileprivate extension Table {
    func generateCreateTableSQL(fields: [(String, TableField<Any>)]) -> String {
        return ""
    }
}
