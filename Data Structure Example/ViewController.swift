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
        
        var heap = MaxHeap(nodes: [1,5,3,4,2,1,2])
//        heap.insert(1) //[1]
//        heap.insert(5) //[5,1]
//        heap.insert(3) //[5,1,3]
//        heap.insert(4) //[5,4,3,1]
//        heap.insert(2) //[5,4,3,1,2]
//        heap.insert(1) //[5,4,3,1,2,1]
//        heap.insert(2) //[5,4,3,1,2,1,2]
//        heap.remove() //[4,2,3,1,2,1]
//        heap.remove() //[3,2,1,1,2]
//        heap.remove() //[2,2,1,1]
//        heap.insert(7) //[7, 2, 1, 1, 2]
//        heap.insert(5) //[7, 2, 5, 1, 2, 1]
        print(heap.nodes)
    }
}
