//: Playground - noun: a place where people can play

//MARK: 선형 자료구조의 일종으로 Last In First Out(LIFO). 즉, 나중에 들어간 원소가 먼저 나온다.

struct Stack {
    fileprivate var array: [String] = []
    
    mutating func push(_ element: String){
        array.append(element)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        let stackElements = array.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}


var rwBookStack = Stack()

rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("꼼꼼한 재은씨의 스위프트")
rwBookStack.push("박성준")

rwBookStack.pop()

print(rwBookStack)
