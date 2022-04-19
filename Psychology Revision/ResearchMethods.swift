//
//  main.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 15/03/2022.
//  Copyright © 2022 yes. All rights reserved.
//

import Foundation
func ResearchMethods (){
let file = "RMQuestions.txt"
    
var RMQuestions = ""
 
//if you get access to the directory
if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
 
    //prepare file url
    let fileURL = dir.appendingPathComponent(file)
 
    do {
        RMQuestions = try String(contentsOf: fileURL, encoding: .utf8)
    }
    catch {/* handle if there are any errors */}
}
 
    print(RMQuestions)


    }
