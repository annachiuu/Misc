// Stacks and Generics Interview Practice

//use a linked list


import UIKit

class Node<T> {
    let value: T
    var next: Node? //not always a next
    init(value: T) {
        self.value = value
    }
}

class Stack<T> { //by specifying <T> - generic type
    
    //When ever reference class with <T> must use it in it's init too
    var top: Node<T>? //Optional because there might not be any values
    
    
    func push (_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop // anytime you assess top must use optional
        
    }
    func pop() -> T? {
        var currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User {
    let name: String
    let username: String
}

let me = User(name: "Anna", username: "@anna")
let you = User(name: "Dad", username: "@dad")

var UserType = Stack<User>() //Don't forget to insert <type> and ()

UserType.push(me)
UserType.push(you)

let firstUserPop = UserType.pop()
print(firstUserPop?.name ?? "")



let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

let firstPop = stack.pop() //should return 3
let secondPop = stack.pop()

let firstCurrentItem = stack.peek()

let thirdPop = stack.pop()
let finalPop = stack.pop()



