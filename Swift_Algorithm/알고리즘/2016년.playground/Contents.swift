//: Playground - noun: a place where people can play

import UIKit

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let calendar = Calendar(identifier: .gregorian)
    let weekDayArray = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ko_KR")
    formatter.dateFormat =  "yyyy-MM-dd"
    let solutionDate = formatter.date(from: "2016-\(a)-\(b)")
    
    let answer : DateComponents? = {
        return calendar.dateComponents([.weekday], from: solutionDate!)
    }()
    
    return weekDayArray[(answer?.weekday)!-1]
}

solution(5, 12)
