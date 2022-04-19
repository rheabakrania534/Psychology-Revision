//
//  MemorySAView.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 15/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

import SwiftUI
struct MemorySAView: View {
    
    @State private var questionIndex = 0
    @State private var userAnswer: String = ""
    
    let button = ["Confirm Answer"]
    @State public var buttonConfirm = [Int?]()
    
    //User Home Page View
    var body: some View {
        
        //Allows for Scrolling
        ScrollView {
            
            //App Logo and Vertical Stacks
            VStack(spacing: 1.0) {
                
                //Multiple Choice Question Appears
                //Used Group{} to Prevent Argument Error
                Group {
                    VStack {
                        Text(MemorySA[questionIndex].question)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                    }
                }
                
                Spacer()
                
                
                //VStack Allowing User To Enter Their Response
                VStack {
                    TextField(
                        "Enter Answer",
                        text: $userAnswer )
                    .disableAutocorrection(true)
                }
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack(spacing: 15) {
                    ForEach(0..<button.count, id: \.self) {button in
                        Button {
                            
                            // Make sure the index doesn't go beyond the array size
                            if MemorySA.count > questionIndex + 1 {
                                questionIndex += 1
                            }
                        } label: {
                            //Disables Button If Answer Box Is Empty
                            ZStack {
                                if questionIndex != 2 {
                                    Text("Confirm Answer")
                                    .foregroundColor(.white)}
                                if questionIndex == 2 {
                                    NavigationLink("Confirm Answer", destination: MemoryLAView())
                                    .foregroundColor(.white)}
                                
                            }}
                        
                        .padding(.vertical, 12.5)
                        .padding(.horizontal, 120)
                        .foregroundColor(.white)
                        .foregroundStyle(.background)
                        .background(2 == button ? Color.primary: Color.secondary)
                        .clipShape(Capsule()).disabled(userAnswer.isEmpty)
                        
                    }
                    
                }
            }
        }
        
        //Allows Header To Be Displayed
        .navigationTitle("Memory")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct MemorySAView_Previews: PreviewProvider {
    static var previews: some View {
        MemorySAView()
        
    }
    
}
