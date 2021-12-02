//
//  AVLTree.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/12/02.
//

import Foundation

struct AVLTree<T:Comparable> {
    
    var root:AVLNode<T>?
    
    public func isContain(value:T) -> Bool {
        var node:AVLNode? = root
        while node != nil {
            if node!.value == value {
                return true
            }
            node = node!.value > value ? node?.leftChild : node?.rightChild
        }
        return false
    }
    
    public mutating func insert(value:T) {
        guard let _ = root else {
            self.root = AVLNode(value: value)
            return
        }
        
        var node:AVLNode = root!
        var nodes:[AVLNode<T>] = []
        
        while true {
            nodes.append(node)
            if node.value > value {
                if node.leftChild == nil {
                    node.leftChild = AVLNode(value: value)
                    break
                }else {
                    node = node.leftChild!
                }
            }else {
                if node.rightChild == nil {
                    node.rightChild = AVLNode(value: value)
                    break
                }else {
                    node = node.rightChild!
                }
            }
        }
    }
}

