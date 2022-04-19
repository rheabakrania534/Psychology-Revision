//
//  SAQuestionPack.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 08/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

struct QuestionPack: Hashable, Codable {
    let Questions: [Question]
}

struct Question: Hashable, Codable {
    let question: String
    let answer: String
    let marksAwarded: Int
}
