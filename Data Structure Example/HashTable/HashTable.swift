//
//  HashTable.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/11/16.
//

import Foundation

public struct HashTable<String,Value> {
    
    public typealias Key = String
    private typealias Element = (key:Key,value:Value)
    private var bucket:[[Element]] = []
    
    public init(bucketSize:Int) {
        bucket = Array<[Element]>(repeating:[], count: bucketSize)
    }
    
    public subscript(key: String) -> Value? {
        get {
            return value(forKey: key)
        }
        set {
            if let value = newValue {
                updateValue(value, forKey: key)
            } else {
                removeValue(forKey: key)
            }
        }
    }
    
    private func findIndexByDigitFolding(forKey key:Key) -> Int {
        return "\(key)".unicodeScalars.reduce(0, { $0 + Int($1.value) }) % bucket.count
    }
    
    public func value(forKey key: Key) -> Value? {
        let index = findIndexByDigitFolding(forKey: key)
        for element in bucket[index] {
            if "\(element.key)" == "\(key)" {
                return element.value
            }
        }
        return nil
    }
    
    public mutating func updateValue(_ value: Value, forKey key: Key) {
        let index = findIndexByDigitFolding(forKey: key)
        
        for (i, element) in bucket[index].enumerated() {
            if "\(element.key)" == "\(key)" {
                bucket[index][i].value = value
            }
        }
        
        bucket[index].append((key: key, value: value))
    }
    
    public mutating func removeValue(forKey key: Key) {
        let index = findIndexByDigitFolding(forKey: key)
        
        for (i, element) in bucket[index].enumerated() {
            if "\(element.key)" == "\(key)" {
                bucket[index].remove(at: i)
            }
        }
    }
}
