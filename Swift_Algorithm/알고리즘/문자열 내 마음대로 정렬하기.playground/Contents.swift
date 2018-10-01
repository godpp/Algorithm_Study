//: Playground - noun: a place where people can play

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var check = false
    let sortedStrings : [String] = strings.sorted { (left, right) -> Bool in
        let leftIndex = left.index(left.startIndex, offsetBy: n-1)
        let rightIndex = right.index(right.startIndex, offsetBy: n-1)
        while check == true {
            if left[leftIndex] == right[rightIndex]{
                for index in left.indices{
                    let leftIndex1 = left.index(left.startIndex, offsetBy: index.encodedOffset)
                    let rightIndex1 = right.index(right.startIndex, offsetBy: index.encodedOffset)
                    print(index.encodedOffset)
                    return left[leftIndex1] < right[rightIndex1]
                }
            }else{
                check = true
            }
        }
        print(check)
        return left[leftIndex] < right[rightIndex]
    }
    return sortedStrings
}


solution(["acce", "acbd", "cdx"], 1)
