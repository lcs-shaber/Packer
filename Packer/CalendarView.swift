//
//  CalendarView.swift
//  Packer
//
//  Created by Sophie Haber on 07.06.24.
//

import SwiftUI

struct CalendarView: View {
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
    CalendarView()
}
