//
//  ApproachesView.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 06/04/2022.
//  Copyright © 2022. All rights reserved.
//

import SwiftUI
struct ApproachesMCQView: View {
    
    //Creating Variables for Revision Topics
    @State private var setOptionOne = false
    @State private var setOptionTwo = false
    @State private var setOptionThree = false
    
    @State private var questionIndex = 0
    
    let button = ["Confirm Answer"]
    @State public var buttonConfirm = [Int?]()
    
    private var allOptions: [Bool] {
        [setOptionOne, setOptionTwo, setOptionThree]}
    
    private var isQuestionValid: Bool {
        !allOptions.filter{ $0 }.isEmpty}
    
    //User Home Page View
    var body: some View {
        
        //Allows for Scrolling
        NavigationView {
            ScrollView {
                
                //App Logo and Vertical Stacks
                VStack(spacing: 1.0) {
                    
                    //Multiple Choice Question Appears
                    //Used Group{} to Prevent Argument Error
                    Group {
                        VStack {
                            Text(ApproachesMCQ[questionIndex].mcqquestion)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                        }
                        
                        Spacer()
                        Spacer()
                        
                        //Ensures Only One Answer Can Be Selected
                        let OptionOne = Binding<Bool>(get: { self.setOptionOne }, set: { self.setOptionOne = $0; self.setOptionTwo = false; self.setOptionThree = false })
                        let OptionTwo = Binding<Bool>(get: { self.setOptionTwo }, set: { self.setOptionOne = false; self.setOptionTwo = $0; self.setOptionThree = false })
                        let OptionThree = Binding<Bool>(get: { self.setOptionThree }, set: { self.setOptionOne = false; self.setOptionTwo = false; self.setOptionThree = $0 })
                        
                        //Shows User MCQ Options
                        VStack {
                            Toggle(ApproachesMCQ[questionIndex].mcqoptions[0], isOn: OptionOne)
                                .toggleStyle(.button)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                .tint(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .foregroundColor(Color("Black-White"))
                            Toggle(ApproachesMCQ[questionIndex].mcqoptions[1], isOn: OptionTwo)
                                .toggleStyle(.button)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                .tint(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .foregroundColor(Color("Black-White"))
                            Toggle(ApproachesMCQ[questionIndex].mcqoptions[2], isOn: OptionThree)
                                .toggleStyle(.button)
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                .tint(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .foregroundColor(Color("Black-White"))
                        }
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    //Confirm Answer Button
                    HStack(spacing: 15) {
                        ForEach(0..<button.count, id: \.self) {button in
                            Button {
                                
                                // Ensuring The Index Does Not Exceed Array Size
                                if ApproachesMCQ.count > questionIndex + 1 {
                                    questionIndex += 1
                                }
                            } label: {
                                ZStack {
                                    if questionIndex != 4 {
                                        Text("Confirm Answer")
                                        .foregroundColor(.white)}
                                    
                                    //Navigates Button To Following View
                                    if questionIndex == 4 {
                                        NavigationLink("Confirm Answer", destination: ApproachesSAView())
                                        .foregroundColor(.white)}
                                }}
                            
                            .padding(.vertical, 12.5)
                            .padding(.horizontal, 120)
                            .foregroundColor(.white)
                            .foregroundStyle(.background)
                            .background(2 == button ? Color.primary: Color.secondary)
                            
                            //'Confirm Answer' Button is Disabled if User Has Not Selected An Option
                            .clipShape(Capsule()).disabled(!isQuestionValid)}
                        
                        
                        
                    }
                }
            }
            
            //Allows Header To Be Displayed
            .navigationTitle("Approaches")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ApproachesView_Previews: PreviewProvider {
    static var previews: some View {
        ApproachesMCQView()
        
    }
    
}
