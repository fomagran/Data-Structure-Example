import UIKit

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

//func printChild(node:AVLNode<Int>?) {
//    if node == nil { return }
//    print("\(node!.value)의 왼쪽 자식 :\(node!.leftChild?.value)")
//    print("\(node!.value)의 오른쪽 자식 :\(node!.rightChild?.value)")
//    print(node!.height)
//    printChild(node: node!.leftChild)
//    printChild(node: node!.rightChild)
//}
//
//printChild(node: avl.root)

