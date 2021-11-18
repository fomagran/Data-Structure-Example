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
        bst.insert(value: 11)
        bst.insert(value: 8)
        bst.insert(value: 1)
        bst.insert(value: 3)
        bst.remove(value: 8)
        printChild(node: bst.root)
        
//        10의 왼쪽 자식 :Optional(1)
//        10의 오른쪽 자식 :Optional(11)
//        1의 왼쪽 자식 :nil
//        1의 오른쪽 자식 :Optional(3)
//        3의 왼쪽 자식 :nil
//        3의 오른쪽 자식 :nil
//        11의 왼쪽 자식 :nil
//        11의 오른쪽 자식 :nil
        
        //        10
        //    1       11
        //       3
        
  
        
        
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

