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
                     
                // Header
                        Rectangle()
                            .fill(Color.darkPurple)
                            .frame(height: 120)
                        
                        Text ("CALENDAR")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    
                  //List for days and items with a navigation link to the specific day so that you can add events/courses and items to bring to those courses
                    List (allDays) { currentCalendar in
                        
                        //where it will go
                        NavigationLink {
                            CalendarDayView(
                                day: currentCalendar
                            )
                            //how each list row will look like/show
                        } label: {
                            CalendarListView(day: currentCalendar, course: spanish)
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
