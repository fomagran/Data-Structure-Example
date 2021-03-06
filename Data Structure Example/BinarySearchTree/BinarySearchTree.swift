//
//  BinarySearchTree.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/11/17.
//

import Foundation

struct BinarySearchTree<T:Comparable> {
    
    var root:BSTNode<T>?
    
    public func isContain(value:T) -> Bool {
        var node:BSTNode? = root
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
            self.root = BSTNode(value: value)
            return
        }
        
        var node:BSTNode = root!
        
        while true {
            if node.value > value {
                if node.leftChild == nil {
                    node.leftChild = BSTNode(value: value)
                    break
                }else {
                    node = node.leftChild!
                }
            }else {
                if node.rightChild == nil {
                    node.rightChild = BSTNode(value: value)
                    break
                }else {
                    node = node.rightChild!
                }
            }
        }
    }
    
    public mutating func remove(value:T) {
        if root == nil {
            return
        }
        
        var parent:BSTNode = root!
        var node:BSTNode? = root
        
        while node != nil {
            if node!.value == value {
                //자식이 2개 있을 때
                if node?.leftChild != nil && node?.rightChild != nil {
                    let rightChild = node?.rightChild
                    node = findLeftChildMaxValue(node: node!.leftChild!)
                    node?.rightChild = rightChild
                //자식이 왼쪽만 있을 떄
                }else if node?.leftChild != nil{
                    if node!.value < parent.value {
                        parent.leftChild = node?.leftChild
                    }else {
                        parent.rightChild = node?.leftChild
                    }
                //자식이 오른쪽만 있을 때
                }else if node?.rightChild != nil {
                    if node!.value < parent.value {
                        parent.leftChild = node?.rightChild
                    }else {
                        parent.rightChild = node?.rightChild
                    }
                //자식이 없을 때
                }else {
                    if node?.value == root?.value {
                        root = nil
                        return
                    }
                    if node!.value < parent.value {
                        parent.leftChild = nil
                    }else {
                        parent.rightChild = nil
                    }
                }
                if value == root?.value {
                    self.root = node!
                }
                break
            }
            parent = node!
            node = node!.value > value ? node?.leftChild : node?.rightChild
        }
    }
    
    private func findRightChildMinValue(node:BSTNode<T>) -> BSTNode<T> {
        var parent:BSTNode<T> = node
        var leftChild:BSTNode? = node.leftChild
        
        while leftChild?.leftChild != nil {
            leftChild = leftChild?.leftChild!
            parent = leftChild!
        }
        if leftChild?.rightChild != nil {
            parent.rightChild = leftChild?.rightChild
        }
        return leftChild ?? parent
    }
    
    private func findLeftChildMaxValue(node:BSTNode<T>) -> BSTNode<T> {
        var parent:BSTNode<T> = node
        var rightChild:BSTNode? = node.rightChild
        while rightChild?.rightChild != nil {
            rightChild = rightChild?.rightChild!
            parent = rightChild!
        }
        if rightChild?.leftChild != nil {
            parent.leftChild = rightChild?.leftChild
        }
        return rightChild ?? parent
    }
}
