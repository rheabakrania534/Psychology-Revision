//
//  FinalPageView.swift
//  Psychology Revision
//
//  Created by Rhea Bakrania on 15/04/2022.
//  Copyright © 2022 yes. All rights reserved.
//

import SwiftUI

struct FinalPageView: View {
    var body: some View {
        Text("Congratulations Idiot!")
        
        
        //Allows Header To Be Displayed
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct FinalPageView_Previews: PreviewProvider {
    static var previews: some View {
        FinalPageView()
    }
}
