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
        
        var heap = MaxHeap(nodes: [5,4,3,1,2,1,2])
        heap.remove()
        print(heap.nodes)
        
    }
}
