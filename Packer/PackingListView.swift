//
//  PackingListView.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingListView: View {
    
    // MARK: Stored properties
    
    //
    
    // MARK: Computed properties
    var body: some View {
        
        ZStack{
            // Background Color
            Color("OrangePink")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    
                    Rectangle()
                        .fill(Color.lightGray)
                        .frame(height: 100)
                        .padding()
                    Text ("Packing List")
                        .bold()
                        .font(.title2)
                    
                    
                }
                
                NavigationStack {
                         List (allDays) { currentCalendar in
                 
                         label: do {
                                PackingDescription(day: currentCalendar)
                          }
                          }
                     }
            }
        }
    }
}

#Preview {
    PackingListView()
}
