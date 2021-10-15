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
    
    init(value:T,next:Node? = nil) {
        self.value = value
        self.next = next
    }
}
