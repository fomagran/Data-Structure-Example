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
    
    public mutating func insert(value: T) {
        root = insert(from: root, value: value)
    }
    
    private func insert(from node: AVLNode<T>?, value: T) -> AVLNode<T> {
        guard var node = node else {
            return AVLNode(value: value)
        }
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        if !isBalanced(node) {
            node = makeBalanced(node)
        }
        node.height = max(node.leftHeight, node.rightHeight) + 1
        return node
    }
    
    public mutating func remove(_ value: T) {
        root = remove(node: root, value: value)
    }
    
    private func remove(node: AVLNode<T>?, value: T) -> AVLNode<T>? {
        guard var node = node else {
            return nil
        }
        if value == node.value {
            if node.leftChild == nil && node.rightChild == nil {
                return nil
            }
            if node.leftChild == nil {
                return node.rightChild
            }
            if node.rightChild == nil {
                return node.leftChild
            }
            node.value = node.rightChild!.min.value
            node.rightChild = remove(node: node.rightChild, value: node.value)
        } else if value < node.value {
            node.leftChild = remove(node: node.leftChild, value: value)
        } else {
            node.rightChild = remove(node: node.rightChild, value: value)
        }
        if !isBalanced(node) {
            node = makeBalanced(node)
        }
        node.height = max(node.leftHeight, node.rightHeight) + 1
        return node
    }
    
    private func isBalanced(_ node: AVLNode<T>) -> Bool {
        return abs(node.balanceFactor) != 2
    }
    
    private func makeBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if node.balanceFactor == 2 {
            return leftBalanced(node)
        }else {
            return rightBalanced(node)
        }
    }
    
    private func leftBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if let leftChild = node.leftChild, leftChild.balanceFactor == -1 {
            return leftRightRotate(node)
        }else {
            return rightRotate(node)
        }
    }
    
    private func rightBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if let rightChild = node.rightChild, rightChild.balanceFactor == 1 {
            return rightLeftRotate(node)
        }else {
            return leftRotate(node)
        }
    }
    
    private func leftRotate(_ node: AVLNode<T>) -> AVLNode<T>{
        let middle = node.rightChild!
        node.rightChild = middle.leftChild
        middle.leftChild = node
        node.height = max(node.leftHeight, node.rightHeight) + 1
        middle.height = max(middle.leftHeight, middle.rightHeight) + 1
        return middle
    }
    
    private func rightRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        let middle = node.leftChild!
        node.leftChild = middle.rightChild
        middle.rightChild = node
        node.height = max(node.leftHeight, node.rightHeight) + 1
        middle.height = max(middle.leftHeight, middle.rightHeight) + 1
        return middle
    }
    
    private func rightLeftRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        node.rightChild = rightRotate(node.rightChild!)
        return leftRotate(node)
    }
    
    private func leftRightRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        node.leftChild = leftRotate(node.leftChild!)
        return rightRotate(node)
    }
}
