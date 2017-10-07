// Reverse Linked List

import UIKit

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T, next: Node?){
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)


func printList(head: Node<Int>?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil{
        //instead of doing optional chaining
        print(currentNode?.value ?? -1) // add ?? default value to get rid of optional
        currentNode = currentNode?.next
    }
}

func printStringList(head: Node<String>?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil{
        //instead of doing optional chaining
        print(currentNode?.value ?? "") // add ?? default value to get rid of optional
        currentNode = currentNode?.next
    }
}

printList(head: oneNode)

let three = Node(value: "three", next: nil)
let two = Node(value: "two", next: three)
let one = Node(value: "one", next: two)



func reverseStringList(head: Node<String>?) -> Node<String>? {
    var currentNode = head
    var prev: Node<String>?
    var next: Node<String>?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    
    return prev
}

let list = reverseStringList(head: one)
printStringList(head: list)

func reverseList(head: Node<Int>?) -> Node<Int>? {
    
    var currentNode = head
    var prev: Node<Int>?
    var next: Node<Int>?
    
    while currentNode != nil {
        next = currentNode?.next //the temp
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    
    return prev

}

let myReversedList = reverseList(head: oneNode)

printList(head: myReversedList) // should print 3,2,1


