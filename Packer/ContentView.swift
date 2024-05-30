//
//  ContentView.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    //
    
    // MARK: Computed properties
    var body: some View {
   
        ZStack {
            
          // Background Color
            Color (.green)
           .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Rectangle()
                        .fill(.purple)
                        .frame(height: 120)
                    
                    Text ("CALENDAR")
                        .bold()
                        .foregroundColor(.white)
                }
                
                
                            
                                NavigationStack {
                                         List (allDays) { currentCalendar in
                            
                         
                                          //        NavigationLink {
                                          //            ContentView (day: currentCalendar)
                                          //      }
                                         label: do {
                                                CalendarListView(day: currentCalendar)
                                          }
                                          }
                                     }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
