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
    
    func append(valu:T) {
        
    }
    
    func insert(value:T,at index:Int) {
        var node = head
        //만약 연결리스트 크기보다 큰 index가 들어왔다면 그냥 append함.
        for _ in 0...index {
            if node?.next == nil {
                break
            }else {
                node = node?.next
            }
        }
        node?.next = Node(value: value,previous:node)
    }
    
    func remove(at index:Int) {
       
    }
    

}
