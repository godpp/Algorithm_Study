//: Playground - noun: a place where people can play

import Foundation

func solution(_ arrangement:String) -> Int {
    
    var answer: Int = 0
    let lazer: String = "()"
    let leftSteelBar: String = "("
    let rightStellBar: String = ")"
    var steelBar = [Character]()
    
    for index in arrangement.indices{
        
        steelBar.append(arrangement[index])
        
    }
    print(steelBar)
    
    return answer
}



solution("()(((()())(())()))(())")
