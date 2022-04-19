//
//  Psychology_RevisionTests.swift
//  Psychology RevisionTests
//
//  Created by Rhea Bakrania on 03/03/2022.
//

import XCTest
@testable import Psychology_Revision

class Psychology_RevisionTests: XCTestCase {

    func testReadQuestionPack() throws {
             let questionPack = try readQuestionPack()
             XCTAssertEqual(questionPack.questions.count, 1)
             XCTAssertEqual(questionPack.questions[0].answers[1], "a quasi experiment")
             XCTAssertEqual(questionPack.questions[0].marks, 1)
    }

}
