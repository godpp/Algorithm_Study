//: Playground - noun: a place where people can play

func quickSort<T: Comparable>(_ array: Array<T>) -> Array<T> {
    if array.isEmpty {
        return []
    } else { 
        let pivot = array[0]
        let body = array[1..<array.count]
        let left = quickSort(body.filter({ $0 <= pivot }))
        let right = quickSort(body.filter({ $0 > pivot }))
        
        return left + [pivot] + right
    }
}

print(quickSort([3,1,6,2,4,7,8,5]))
