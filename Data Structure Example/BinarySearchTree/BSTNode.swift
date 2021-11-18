//
//  BSTNode.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/11/18.
//

import Foundation

class BSTNode<T:Comparable> {
    var value:T
    var leftChild:BSTNode?
    var rightChild:BSTNode?
    
    init(value:T) {
        self.value = value
    }
}
