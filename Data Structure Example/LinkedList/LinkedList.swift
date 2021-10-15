//
//  LinkedList.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/08/11.
//

import Foundation

class LinkedList<T> {
    var head:Node<T>!
    
    init(head:Node<T>) {
        self.head = head
    }
    
    func append(value:T) {
        var node:Node = head
        
        while node.next != nil {
            node = node.next!
        }
        
        node.next = Node(value: value)
    }
    
    func insert(value:T,at index:Int) {
        var node = head
        
        if index == 0 {
            let pastHead = head
            head = Node(value: value)
            head.next = Node(value: pastHead!.value,next:pastHead?.next)
            return
        }
   
        for _ in 0..<index-1 {
            node = node?.next
        }
        
        if node?.next == nil {
            fatalError("list의 크기보다 index가 커서 insert가 안됩니다.")
        }
        
        let next = node?.next
        node?.next = Node(value:value,next:next)
    }
    
    func remove(at index:Int) {
        var node = head
        
        if index == 0 {
            if head.next == nil {
                fatalError("head말고 다른 값이 없어서 remove가 안됩니다.")
            }
            head = Node(value: head.next!.value, next: head.next?.next)
            return
        }
        
        for _ in 0..<index-1 {
            node = node?.next
        }
        
        if node?.next == nil {
            fatalError("list의 크기보다 index가 커서 remove가 안됩니다.")
        }
        
        if let next = node?.next?.next {
            node?.next = Node(value:next.value,next:next.next)
        }else {
            node?.next = nil
        }
    }
}
