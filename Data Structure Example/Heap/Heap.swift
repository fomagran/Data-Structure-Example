//
//  Heap.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/10/15.
//

import Foundation

struct MaxHeap {
    var nodes:[Int] = []
    
    init(nodes:[Int]) {
        self.nodes = nodes
    }
    
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    // Boolean Check
    private func hasLeftChild(_ index: Int) -> Bool {
        return getLeftChildIndex(index) < nodes.count
    }
    private func hasRightChild(_ index: Int) -> Bool {
        return getRightChildIndex(index) < nodes.count
    }
    private func hasParent(_ index: Int) -> Bool {
        return getParentIndex(index) >= 0
    }
    
    mutating func remove()  {
        if nodes.isEmpty {
            return
        }
        nodes.swapAt(0, nodes.count - 1)
        nodes.removeLast()
        var index = 0
        while hasLeftChild(index) {
            let leftIndex:Int = getLeftChildIndex(index)
            let rightIndex:Int = getRightChildIndex(index)
            var biggerChildIndex = leftIndex
            if hasRightChild(index) && nodes[leftIndex] < nodes[rightIndex] {
                biggerChildIndex = rightIndex
            }
            
            if nodes[index] > nodes[biggerChildIndex] {
                break
            } else {
                nodes.swapAt(index, biggerChildIndex)
            }
            index = biggerChildIndex
        }
    }
}
