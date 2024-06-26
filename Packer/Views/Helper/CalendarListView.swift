//
//  CalendarListView.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import SwiftUI

struct CalendarListView: View {
    
    // MARK: Stored properties
    
    let day: Calendar
    let course: Course
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            
            ZStack{
              
            //what day it is
                Rectangle()
                    .fill(day.rectangleColour1)
                Text(day.dayName)
                    .foregroundColor(day.textColor1)
                    .bold()
                    .font(.title3)
            }
            
            ZStack {
              
                //what class you have and what you need to bring to that
                Rectangle()
                    .fill(day.rectangleColour2)
                
                VStack (alignment: .leading) {
                    
                    Text(course.name)
                        .foregroundColor(day.textColor2)
                    
                    HStack {
                        Text ("->")
                        Text (day.reminders2)
                    }
                }
            }
        }
    }
}

#Preview {
    CalendarListView(
       day: monday,
       course: spanish
    )
}
