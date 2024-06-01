//
//  CalendarDayView.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct CalendarDayView: View {
    
   let day: Calendar
    
    var body: some View {
      
        NavigationStack {
            
        ZStack {
            
            // Background Color
             Color("OrangePink")
             .ignoresSafeArea()
            
            VStack {
                
                
                ZStack {
                    
                    Rectangle()
                        .fill(Color.lightPurple)
                        .frame(height: 100)
                        .padding(.horizontal)
                    
                    VStack{
                        
                        HStack{
                            Spacer()
                            Image(systemName: "plus")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.white)
                                .padding(.trailing)
                        }
                        
                        Text (day.dayName)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    
                }
                
                
                    List (allDays){ currentCalendar in 
                        
                        NavigationLink {
                            AddPackingListView (day: currentCalendar)
                        } label: {
                            Text(day.reminders)
                                .foregroundColor(.gray)
                        }
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
    CalendarDayView(
        day: monday
    )
}
