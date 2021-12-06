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
    var height:Int = 0

    var leftHeight:Int {
        return leftChild?.height ?? -1
    }
    
    var rightHeight:Int {
        return rightChild?.height ?? -1
    }
    
    var balanceFactor:Int {
        return leftHeight - rightHeight
    }
    
    init(value:T) {
        self.value = value
    }
}

extension AVLNode {
    var min: AVLNode {
        return leftChild?.min ?? self
    }
}
