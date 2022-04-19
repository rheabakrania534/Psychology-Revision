//
//  Loading Questions.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 16/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

import Foundation

//Loading MCQ JSON Files
var ResearchMCQ: [mcqQuestion] = load("ResearchMCQ.json")
var MemoryMCQ: [mcqQuestion] = load("MemoryMCQ.json")
var AttachmentMCQ: [mcqQuestion] = load("AttachmentMCQ.json")
var SocialInfluenceMCQ: [mcqQuestion] = load("SocialInfluenceMCQ.json")
var ApproachesMCQ: [mcqQuestion] = load("ApproachesMCQ.json")
var IssuesandDebatesMCQ: [mcqQuestion] = load("IssuesandDebatesMCQ.json")
var PsychopathologyMCQ: [mcqQuestion] = load("PsychopathologyMCQ.json")
var SchizophreniaMCQ: [mcqQuestion] = load("SchizophreniaMCQ.json")
var BiopsychologyMCQ: [mcqQuestion] = load("BiopsychologyMCQ.json")

//Loading SA JSON Files
var ResearchSA: [Question] = load("ResearchSA.json")
var MemorySA: [Question] = load("MemorySA.json")
var AttachmentSA: [Question] = load("AttachmentSA.json")
var SocialInfluenceSA: [Question] = load("SocialInfluenceSA.json")
var ApproachesSA: [Question] = load("ApproachesSA.json")
var IssuesandDebatesSA: [Question] = load("IssuesandDebatesSA.json")
var PsychopathologySA: [Question] = load("PsychopathologySA.json")
var SchizophreniaSA: [Question] = load("SchizophreniaSA.json")
var BiopsychologySA: [Question] = load("BiopsychologySA.json")

//Loading LA JSON Files
var ResearchLA: [Question] = load("ResearchLA.json")
var MemoryLA: [Question] = load("MemoryLA.json")
var AttachmentLA: [Question] = load("AttachmentLA.json")
var SocialInfluenceLA: [Question] = load("SocialInfluenceLA.json")
var ApproachesLA: [Question] = load("ApproachesLA.json")
var IssuesandDebatesLA: [Question] = load("IssuesandDebatesLA.json")
var PsychopathologyLA: [Question] = load("PsychopathologyLA.json")
var SchizophreniaLA: [Question] = load("SchizophreniaLA.json")
var BiopsychologyLA: [Question] = load("BiopsychologyLA.json")

//Reading From JSON Files
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
