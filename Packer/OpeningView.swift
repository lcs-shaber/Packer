//
//  OpeningView.swift
//  Packer
//
//  Created by Sophie Haber on 06.06.24.
//

import SwiftUI

struct OpeningView: View {
    
    // MARK: Stored properties
    @State private var hasChosenGetStarted = false
    
    
    // MARK: Computed properties
    
    var body: some View {
        
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
