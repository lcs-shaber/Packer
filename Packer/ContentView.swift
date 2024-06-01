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
        
        NavigationStack{
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
                    
                    
                    
                    List (allDays) { currentCalendar in
                        NavigationLink {
                            CalendarDayView(day: currentCalendar)
                        } label: {
                            CalendarListView(day: currentCalendar)
                                .frame(height: 55)
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        
                    }
                    .listStyle(.plain)
                    .background {
                        Color.clear
                    }
                }
                .padding()
            }
        }
        .accentColor(.darkPurple)
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
