//: Playground - noun: a place where people can play

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var answerArray : [Int] = [Int]()
    
    for item in arr{
        if item % divisor == 0 {
            answerArray.append(item)
        }
    }
    
    answerArray.sort()
    
    if answerArray.count == 0{
        answerArray.append(-1)
    }
    
    return answerArray
}

solution([2,36,1,3], 1)
