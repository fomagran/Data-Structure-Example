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
        
        var h = HashTable<String, Any>(bucketSize: 13)
        h["foma"] = "gran"
        h["gran"] = "foma"
        
        print(h["foma"],h["gran"],h["fomagran"])
    
    }
}
