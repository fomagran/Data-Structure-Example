//
//  Node.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/08/11.
//

import Foundation

class Node<T> {
    let value:T
    var next:Node?
    var previous:Node?
    
    init(value:T,next:Node? = nil,previous:Node? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}
