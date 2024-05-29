//
//  CalendarListView.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import SwiftUI

struct CalendarListView: View {
    
    // MARK: Stored properties
    
    let reminders: String
    let rectangleColour: Color
    let textColor: Color
    
    // MARK: Computed properties
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(rectangleColour)
            Text(reminders)
                .foregroundColor(textColor)
        }
    }
}

#Preview {
    CalendarListView(
        reminders: "go for a walk",
        rectangleColour: .gray,
        textColor: .white
    )
}
