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
           Color("OrangePink")
           .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Rectangle()
                        .fill(Color.darkPurple)
                        .frame(height: 120)
                    
                    Text ("CALENDAR")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                
                            
                                NavigationStack {
                                         List (allDays) { currentCalendar in
                                            
                          //              NavigationLink {
                          //      CalendarDayView (calendarDay: currentCalendarDay)
                          //              }
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
    //Tab bar
    
    TabView (selection: Binding.constant(1)) {
        
       ContentView()
            .tabItem {
                Image (systemName: "calendar")
                Text ("Calendar")
            } .tag (1)
        
        PackingListView()
            .tabItem {
                Image (systemName: "list.bullet.clipboard")
                Text ("Packing List")
            } .tag (2)
    }
    
    //Change the colour of the currently active tab item
    
    .accentColor(.red)
    
   
}
