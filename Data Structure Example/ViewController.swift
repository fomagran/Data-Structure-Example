//
//  ViewController.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let head = Node(value: 0)
        let list = LinkedList(head: head)

        list.append(value: 1)
        list.append(value: 2)
        list.append(value: 3)
        
        list.insert(value: 4, at: 0)
        list.insert(value: 5, at: 1)
        list.insert(value: 10, at: 4)
        
        //45011023
        
        list.remove(at: 1)
        list.remove(at: 1)
        list.remove(at: 2)
        
        //4123
        
        var node:Node? = list.head
        print(list.head.value)
        while node?.next != nil {
            print(node!.next!.value)
            node = node?.next
        }
    }
}
