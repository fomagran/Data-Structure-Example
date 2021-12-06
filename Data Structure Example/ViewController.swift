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
        
        var avl = AVLTree<Int>()
        avl.insert(value: 7)
        avl.insert(value: 4)
        avl.insert(value: 3)
        avl.insert(value: 2)
        avl.insert(value: 5)
        avl.insert(value: 8)
        avl.insert(value: 10)
        avl.insert(value: 11)
        avl.insert(value: 9)
        
        avl.remove(8)
        printChild(node: avl.root)
    }
    
    func printChild(node:AVLNode<Int>?) {
        if node == nil { return }
        print(node!.value)
        print("왼쪽 자식 \(node?.leftChild?.value)")
        print("왼쪽 자식 \(node?.rightChild?.value)")
        printChild(node: node!.leftChild)
        printChild(node: node!.rightChild)
    }
}

//        4
//    3        9
//  2        7    10
//         5        11

//4
//왼쪽 자식 Optional(3)
//왼쪽 자식 Optional(8)
//3
//왼쪽 자식 Optional(2)
//왼쪽 자식 nil
//2
//왼쪽 자식 nil
//왼쪽 자식 nil
//8
//왼쪽 자식 Optional(7)
//왼쪽 자식 Optional(10)
//7
//왼쪽 자식 Optional(5)
//왼쪽 자식 nil
//5
//왼쪽 자식 nil
//왼쪽 자식 nil
//10
//왼쪽 자식 Optional(9)
//왼쪽 자식 Optional(11)
//9
//왼쪽 자식 nil
//왼쪽 자식 nil
//11
//왼쪽 자식 nil
//왼쪽 자식 nil
