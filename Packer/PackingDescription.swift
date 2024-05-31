//
//  PackingDescription.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingDescription: View {
    
    // MARK: Stored properties
    
    let day: Calendar
    
    // MARK: Computed properties
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Text (day.dayName)
                    .bold()
                    .font(.title3)
                Spacer()
                
            }
            
            Text (day.reminders2)

        }
        
        
        
    }
}

#Preview {
    PackingDescription(day: monday)
}
