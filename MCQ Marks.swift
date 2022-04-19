//
//  MCQ Marks.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 19/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

import Foundation

func mcqmarks(totalScore: Int, setOptionOne: Bool, setOptionTwo: Bool, setOptionThree: Bool, answerIndex: Int) {
    if setOptionOne && answerIndex == 1 {
        _ = totalScore + 1 }

    if setOptionTwo && answerIndex == 2 {
        _ = totalScore + 1 }
    
    if setOptionThree && answerIndex == 3 {
        _ = totalScore + 1 }
    
    else {
        _ = totalScore }
}

// answerIndex = MemoryMCQ[questionIndex].mcqanswer
