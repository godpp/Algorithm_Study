//
//  main.swift
//  Kakao
//
//  Created by 갓거 on 2018. 9. 15..
//

import Foundation

func solution(_ food_times:[Int], _ k:Int64) -> Int {
    
    var a = food_times
    var endTime = 0
    var count = 0
    var check = false
    var saveIndex = 0

    while true {
        for i in 0..<a.count{
            if a[i] != 0{
                a[i] -= 1
                endTime += 1
                if endTime == k {
                    check = true
                    saveIndex = i+1
                    break
                }
            }
        }
        for j in a{
            if j == 0{
                count += 1

            }
        }
        if count > food_times.count {
            saveIndex = -1
            break
        }
        if check == true{
            break
        }
    }
    
    if saveIndex > a.count-1{
        saveIndex = 1
    } else if saveIndex == -1{
        print(saveIndex)
        return saveIndex
    } else {
        saveIndex += 1
    }
    print(saveIndex)
    return saveIndex
}


solution([3, 1, 0], 3)








// 2번 문제
//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var successPeopleCount = [Int:Int]()
//    var tempCount: Int = 0
//    var reachStagePeople = [Int:Int]()
//    var reachPeopleCount: Int = 0
//    var failureRate = [Int:Float]()
//
//    for stage in 1...N{
//        successPeopleCount.updateValue(0, forKey: stage)
//        for people in 0..<stages.count{
//            if stages[people] >= stage{
//                reachPeopleCount += 1
//                reachStagePeople.updateValue(reachPeopleCount, forKey: stage)
//                if stages[people] > stage{
//                    tempCount += 1
//                    successPeopleCount.updateValue(tempCount, forKey: stage)
//                }
//            }
//        }
//        tempCount = 0
//        reachPeopleCount = 0
//    }
//
//    for (key, value) in reachStagePeople {
//        if successPeopleCount.keys.contains(key){
//            failureRate.updateValue(Float(value-successPeopleCount[key]!)/Float(value), forKey: key)
//        }
//    }
//
//    let duplicateAnswer = failureRate.sorted { (first, second) -> Bool in
//        if first.value == second.value {
//            return first.key < second.key
//        } else {
//            return first.value > second.value
//        }
//    }
//    var answer = [Int]()
//    for (key,_) in duplicateAnswer{
//        answer.append(key)
//    }
//
//    return answer
//}
//
//
//solution(4, [4,4,4,4,4])
//solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
//solution(10, [5, 1, 10, 11, 2, 2, 3, 3])





// 1번 문제 오픈채팅방
//func solution(_ record:[String]) -> [String] {
//
//    var splitRecordArray = [[String]]()
//    var stateArray = [[String]]()
//    var uidNameDictornary = [String:String]()
//    var answerArray = [String]()
//
//    for line in record {
//        splitRecordArray.append(line.split(separator: " ").map(String.init))
//    }
//
//
//    for singleLine in splitRecordArray {
//        var tempArray = [String]()
//
//        switch singleLine[0]{
//        case "Enter":
//            uidNameDictornary.updateValue(singleLine[2], forKey: singleLine[1])
//            tempArray.append(singleLine[1])
//            tempArray.append("In")
//            stateArray.append(tempArray)
//        case "Leave":
//            tempArray.append(singleLine[1])
//            tempArray.append("Out")
//            stateArray.append(tempArray)
//        case "Change":
//            if uidNameDictornary.keys.contains(singleLine[1]){
//                uidNameDictornary.updateValue(singleLine[2], forKey: singleLine[1])
//            }
//        default:
//            break
//        }
//    }
//
//    for index in stateArray{
//        if uidNameDictornary.keys.contains(index[0]) && index[1] == "In"{
//            if let bindDictornary = uidNameDictornary[index[0]]{
//                answerArray.append("\(bindDictornary)님이 들어왔습니다.")
//            }
//        } else {
//            if let bindDictornary = uidNameDictornary[index[0]]{
//                answerArray.append("\(bindDictornary)님이 나갔습니다.")
//            }
//        }
//    }
//    return answerArray
//}
//
//
//solution([
//    "Enter uid1234 Muzi",
//    "Enter uid4567 Prodo",
//    "Leave uid1234",
//    "Enter uid1234 Prodo",
//    "Change uid4567 Ryan"
//    ])

