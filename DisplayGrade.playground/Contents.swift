import UIKit

func calcAverage(exam1:Int, exam2:Int, exam3:Int) -> Double{
    let weightedEx1:Double = 0.2
    let weightedEx2:Double = 0.3
    let weightedEx3:Double = 0.5
    
    let score1:Double = Double(exam1) * weightedEx1
    let score2:Double = Double(exam2) * weightedEx2
    let score3:Double = Double(exam3) * weightedEx3
    
    let total = score1 + score2 + score3
    return total
    
}

let semesterAverage = calcAverage(exam1: 90, exam2: 70, exam3: 80)

print(semesterAverage)

func determineGrade(score: Double) -> String? {
    var result:String? = nil
    if score >= 90 && score <= 100 {
        result = "A"
    } else if score >= 80 && score < 90 {
        result = "B"
    } else if score >= 70 && score < 80 {
        result = "C"
    } else if score >= 60 && score < 70 {
        result = "D"
    } else {
        result = "F"
    }
    
    return result
}

let letterGrade = determineGrade(score: semesterAverage)

print(letterGrade!)
