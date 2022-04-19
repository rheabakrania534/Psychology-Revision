//
//  MCQ Question Pack.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 16/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

struct mcqQuestionPack: Hashable, Codable {
    let mcqQuestions: [mcqQuestion]
}

struct mcqQuestion: Hashable, Codable {
    let mcqquestion: String
    let mcqoptions: [String]
    let mcqanswer: Int
    let mcqmarksAwarded: Int
}



