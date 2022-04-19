//
//  HomePageView.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 03/03/2022.
//  Copyright © 2022. All rights reserved.


import SwiftUI
struct HomePageView: View {
    
    //Creating Variables for Topics
    @State private var setMemory = false
    @State private var setSocialInfluence = false
    @State private var setApproaches = false
    @State private var setPsychopathology = false
    @State private var setBiopsychology = false
    @State private var setAttachment = false
    @State private var setIssuesandDebates = false
    @State private var setSchizophrenia = false
    @State private var setResearchMethods = false
    
    //Creating Buttons for Number of Questions
    let buttons = ["10", "20", "30", "40", "50"]
    @State public var NumberSelected: Int?
    
    //Creating Variable for 'How To Use' Instructions
    @State private var HowToUse = """
 1. Select your preferred revision topic
 2. Choose how many questions you are able to answer
 3. Click the 'continue' button below and start revising!
 """
    @State private var HowToUse2 = """
 Multiple choice questions will appear first - these are worth 1 mark each. Once you have a score of 5 or over, the difficulty will increase to short-answer questions. If you master these and achieve a score of 25 or above, long-answer questions will appear.
 """
    @State private var HowToUse3 = """
 All multiple choice questions will be automatically checked. For the harder questions, a student-friendly markscheme will show and you will need to input your score. Be honest!
 """
    
    //Creating Variables for 'Continue' Button
    let button = ["Continue"]
    @State public var buttonContinue: Int?
    
    //Making Sure User Selects Topic(s) and Number of Questions
    private var allTopics: [Bool] {
        [setMemory, setSocialInfluence, setApproaches, setPsychopathology, setBiopsychology, setAttachment, setIssuesandDebates, setSchizophrenia, setResearchMethods]}
    
    
    private var TopicSelected: Bool {
        allTopics.contains { $0 }}
    
    private var isFormValid: Bool {
        TopicSelected && NumberSelected != nil}
    
    
    var body: some View {
        
        //Allows for Navigation and Scrolling
        NavigationView {
            ScrollView {
                
                //App Logo and Vertical Stacks
                VStack(spacing: 1.0) {
                    HStack {
                        Image("AppLogo")
                            .resizable()
                            .scaledToFit()
                            .padding(.trailing, 50.0)
                            .frame(height: 100, alignment: .topLeading)
                        
                    }
                    
                    //'Topics to Revise' Header and Horizontal Stacks
                    HStack {
                        Text("A-Level Topics")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Black-White"))
                            .padding(.top, -20.0)
                            .frame(width: 161, height: 10, alignment: .topLeading)
                            .padding(.trailing, 198.0)
                        
                        Text("Click to Revise")
                            .foregroundColor(Color("Black-White"))
                            .padding(.leading, -368.0)
                            .padding(.top, 30.0)
                            .padding(.bottom, 10.0)
                    }
                    
                    //Ensures Only One Topic Can Be Selected At Once
                    
                    //Toggles for Topics and Vertical Stacks
                    //Used Group{} to Prevent Argument Error
                    Group {
                        VStack(alignment: .leading, spacing: 5) {
                            Toggle("Memory",isOn: $setMemory)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.902, green: 0.755, blue: 0.161))
                            Toggle("Approaches",isOn: $setApproaches)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.945, green: 0.442, blue: 0.022))
                            Toggle("Biopsychology",isOn: $setBiopsychology)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.817, green: 0.065, blue: 0.287))
                            
                            Toggle("Issues & Debates",isOn: $setIssuesandDebates)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.399, green: 0.06, blue: 0.947))
                            Toggle("Research Methods Year 1 & 2",isOn: $setResearchMethods)
                                .toggleStyle(.button)
                            .tint(Color(red: 0.105, green: 0.561, blue: 0.896))}
                        .padding(.leading, -135.0)
                        .padding(.top, -10)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Toggle("Social Influence",isOn: $setSocialInfluence)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.902, green: 0.755, blue: 0.17))
                            Toggle("Psychopathology",isOn: $setPsychopathology)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.945, green: 0.442, blue: 0.022))
                            Toggle("Attachment",isOn: $setAttachment)
                                .toggleStyle(.button)
                                .tint(Color(red: 0.817, green: 0.065, blue: 0.287))
                            Toggle("Schizophrenia",isOn: $setSchizophrenia)
                                .toggleStyle(.button)
                            .tint(Color(red: 0.394, green: 0.061, blue: 0.943))}
                        .padding(.top, -192)
                        .padding(.leading, 180)
                    }
                    
                    Spacer()
                    
                    //'Number of Questions' Header
                    Group {
                        VStack(alignment: .leading) {
                            Text("Number of Questions")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Black-White"))
                                .padding(.trailing, 161.0)
                        }
                        
                        Spacer()
                        
                        
                        //Number of Questions - Selected Buttons
                        HStack(spacing: 15) {
                            ForEach(0..<buttons.count, id: \.self) {button in
                                Button(action: {
                                    self.NumberSelected = button
                                    
                                }) {
                                    Text("\(self.buttons[button])")
                                        .foregroundColor(Color("Black-White"))
                                        .font(.title3)
                                        .padding()
                                        .background(self.NumberSelected == button ? Color("Custom Gray"): Color("White-Black"))
                                    .clipShape(Capsule())}}
                        }
                        
                        Spacer()
                        
                        
                        //'How To Use' Header
                        VStack(alignment: .leading) {
                            Text("How To Use")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Black-White"))
                                .padding(.leading, 10)
                            
                            //How To Use Instructions
                            Text(HowToUse)
                                .foregroundColor(Color("Black-White"))
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.subheadline)
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            Text(HowToUse2)
                                .foregroundColor(Color("Black-White"))
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.subheadline)
                                .padding(.bottom, -6)
                                .padding(.leading, 10)
                            
                            Text(HowToUse3)
                                .foregroundColor(Color("Black-White"))
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.subheadline)
                                .padding(.leading, 10)
                            
                        }
                    }
                        
                        Spacer()
                }
                
                        //Confirm Answer Button
                        HStack(spacing: 15) {
                            Spacer()
                            ForEach(0..<button.count, id: \.self) {button in
                                Button(action: {
                                    self.buttonContinue = button
                                    
                                    
                                }) {
                                    
                                    //Links Continue Button To Next Page
                                    ZStack {
                                        
                                            Text("Continue")
                                            .padding(.vertical, 12.5)
                                            .padding(.horizontal, 135)
                                            .foregroundColor(.white)
                                            .background(2 == button ? Color.primary: Color.secondary)
                                            .clipShape(Capsule())
                                        
                                        if setMemory {
                                            NavigationLink("Continue", destination: MemoryMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setApproaches {
                                            NavigationLink("Continue", destination: ApproachesMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setBiopsychology {
                                            NavigationLink("Continue", destination: BiopsychologyMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setIssuesandDebates {
                                            NavigationLink("Continue", destination: IssuesandDebatesMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setResearchMethods {
                                            NavigationLink("Continue", destination: ResearchMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setSocialInfluence {
                                            NavigationLink("Continue", destination: SocialInfluenceMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setPsychopathology {
                                            NavigationLink("Continue", destination: PsychopathologyMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setAttachment {
                                            NavigationLink("Continue", destination: AttachmentMCQView())
                                                .foregroundColor(.white)}
                                        
                                        if setSchizophrenia{
                                            NavigationLink("Continue", destination: SchizophreniaMCQView())
                                                .foregroundColor(.white)}
                                        
                                        
                                    }
                                    
                                    //'Continue' Button is Disabled if User Has Not Selected Values
                                    .clipShape(Capsule()).disabled(!isFormValid)
                                    
                                }
                            }
                                Spacer()
                                
                            }
                        
                    
                    
                    //Allows Navigate Through Pages
                    .navigationTitle("")
                }
            
        }
        .padding(.top, -150)
        
        }
        
        
    }
    struct Previews_HomePageView_Previews: PreviewProvider {
        static var previews: some View {
            HomePageView()
            
        }
    }
    
    
