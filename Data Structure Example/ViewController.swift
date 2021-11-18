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
        
        var bst = BinarySearchTree<Int>()
        bst.insert(value: 10)
        bst.remove(value: 10)
        print("-------")
        printChild(node: bst.root)
    }
    
    func printChild(node:BSTNode<Int>?) {
        if node == nil { return }
        print("\(node!.value)의 왼쪽 자식 :\(node!.leftChild?.value)")
        print("\(node!.value)의 오른쪽 자식 :\(node!.rightChild?.value)")
        printChild(node: node!.leftChild)
        printChild(node: node!.rightChild)
    }
}


//        10
//    8       11
//1
//    3

