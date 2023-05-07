//
//  Queue.swift
//  BinderSQL
//
//  Created by Mars Scala on 2023/4/7.
//

import Foundation

public class Queue {
    private let queue: DispatchQueue
    private var queueSpec = DispatchSpecificKey<String>()
    init(label: String) {
        let attributes = DispatchQueue.Attributes()
        self.queue = DispatchQueue(label: label, qos: .default, attributes: attributes, autoreleaseFrequency: .never, target: nil)
        queue.setSpecific(key: queueSpec, value: label)
    }
}

public extension Queue {
    func currentQueue() -> DispatchQueue {
        DispatchQueue.main
    }
}
