//
//  CalendarDayView.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct CalendarDayView: View {
    
   let calendarDay: CalendarDay
    
    var body: some View {
      
        ZStack {
            
            // Background Color
             Color("OrangePink")
             .ignoresSafeArea()
            
            VStack{
                
                
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
                        
                        Text (calendarDay.dayName)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    
                }
                
                List{
                    Text(calendarDay.event)
                        .foregroundColor(.gray)
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    CalendarDayView(
        calendarDay: monday3
    )
}
