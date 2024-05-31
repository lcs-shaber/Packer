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
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            
            ZStack{
                
                Rectangle()
                    .fill(day.rectangleColour1)
                Text(day.dayName)
                    .foregroundColor(day.textColor1)
                    .bold()
                    .font(.title3)
            }
            
            ZStack {
                
                Rectangle()
                    .fill(day.rectangleColour2)
                Text(day.reminders2)
                    .foregroundColor(day.textColor2)
                // "->"day.reminders
            }
        }
    }
}

#Preview {
    CalendarListView(
       day: monday
    )
}
