//: Playground - noun: a place where people can play

class Node {
    var value: String
    var next: Node?
    weak var previous: Node?
    init(value: String) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    var tail: Node?
    var isEmpty: Bool { return head == nil }
    var first: Node? { return head }
    var last: Node? { return tail }
    
    func append(value: String) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else{
            head = newNode
        }
        tail = newNode
    }
    
    func appendReverse(value: String){
        let newNode = Node(value: value)
        if let headNode = head {
            newNode.next = headNode
            headNode.previous = newNode
        } else {
            tail = newNode
        }
        head = newNode
    }
}

let vistingPeopleList = LinkedList()

//vistingPeopleList.append(value: "aaa")
//vistingPeopleList.append(value: "bbb")
vistingPeopleList.appendReverse(value: "aaa")
vistingPeopleList.appendReverse(value: "bbb")
vistingPeopleList.appendReverse(value: "ccc")

print(vistingPeopleList)


extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}
