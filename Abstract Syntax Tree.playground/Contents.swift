// Abstract Syntax Tree

import UIKit


class Node {
    var value: Int?
    var operation: String?
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int?, operation: String?, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.operation = operation
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

let sixNode = Node(value: 6, operation: nil, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, operation: nil, leftChild: nil, rightChild: nil)


let twentyfiveNode = Node(value: 25, operation: nil, leftChild: nil, rightChild: nil)
let times25_6Node = Node(value: nil, operation: "*", leftChild: twentyfiveNode, rightChild: sixNode)

let rootPlusNode = Node(value: nil, operation: "+", leftChild: times25_6Node, rightChild: fiveNode)

func evaluate(node: Node) -> Float {
    
    if node.value != nil {
        return Float(node.value!)
    }
    
    if node.operation == "+" {
        return Float(evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!))
    } else if node.operation == "*" {
        return Float(evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!))
    } else if node.operation == "/" {
        return Float(evaluate(node: node.rightChild!) / evaluate(node: node.leftChild!))
    } else if node.operation == "-" {
        //if node right child is zero - throw a zero
        if node.rightChild!.value == 0 {
            return -1
        }
        return Float(evaluate(node: node.rightChild!) - evaluate(node: node.leftChild!))
    }
    return 0
}

evaluate(node: rootPlusNode)
