//
//  BinderSQL.swift
//  BinderSQL
//
//  Created by Mars Scala on 2023/4/7.
//

import Foundation
import SQLite

public class BinderSQL {
    fileprivate static var binderList: [Int: BinderSQL] = [:]
    fileprivate let connection: Connection
    
    init(dbName: String) {
        self.connection = try! Connection(dbName)
    }
}

public extension BinderSQL {
    /// binder数据库将对BinderSQL数据库对象进行缓存，如果存在将返回已存在的数据库对象
    static func binder(db name: String) -> BinderSQL {
        if let binder = binderList[name.hashValue] {
            return binder
        }
        let binder = BinderSQL(dbName: name)
        binderList[name.hashValue] = binder
        return binder
    }
}

fileprivate extension BinderSQL {
    
}

extension BinderSQL {
    func bind() {
        connection.updateHook { operation, db, table, rowid in
            //
        }
    }
}
