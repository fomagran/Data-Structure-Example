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
        
        var hashTable = HashTable<String, Any>(bucketSize: 13)
        //삽입
        hashTable["foma"] = "foma"
        hashTable["gran"] = "gran"

        //충돌(foma와 mofa는 digitfolding에 의해 똑같은 인덱스가 나옵니다.)
        hashTable["mofa"] = "mofa"

        print(hashTable["foma"],hashTable["gran"],hashTable["mofa"],hashTable["fomagran"])
        //Optional("foma") Optional("gran") Optional("mofa") nil

        //삭제
        hashTable["foma"] = nil

        //업데이트
        hashTable["gran"] = "foma"

        print(hashTable["foma"],hashTable["gran"],hashTable["mofa"],hashTable["fomagran"])
        //nil Optional("foma") Optional("mofa") nil
    
    }
}
