//
//  OpeningView.swift
//  Packer
//
//  Created by Sophie Haber on 06.06.24.
//

import SwiftUI

struct OpeningView: View {
    
    // MARK: Stored properties
    
    //whether the user has already clicked on get started or not
    @State private var hasChosenGetStarted = false
    
    
    // MARK: Computed properties
    
    var body: some View {
      
    //an if statement so that the program knows which view to show. The SplashScreenView or the contentView
        if hasChosenGetStarted == false {
            SplashScreenView(getsStarted: $hasChosenGetStarted)
        } else {
            ContentView()
        }
    }
}

#Preview {
    OpeningView()
}
