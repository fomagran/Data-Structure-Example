//
//  AVLNode.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/12/02.
//

import Foundation

class AVLNode<T:Comparable> {
    var value:T
    var leftChild:AVLNode?
    var rightChild:AVLNode?
    var height:Int
    var balanceFactor:Int {
        return (leftChild?.height ?? 0) - (rightChild?.height ?? 0)
    }
    
    init(value:T) {
        self.value = value
        self.height = 0
    }
}
