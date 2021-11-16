//
//  HashNode.swift
//  Data Structure Example
//
//  Created by Fomagran on 2021/11/16.
//

import Foundation

class HashNode<T> {
    var key:String
    var value:T
    var next:HashNode?
    init(key:String,value:T) {
        self.key = key
        self.value = value
    }
}
