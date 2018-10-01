//: Playground - noun: a place where people can play

struct Heap<Element> {
    var elements: [Element]
    let priorityFunction: (Element, Element) -> Bool
}
