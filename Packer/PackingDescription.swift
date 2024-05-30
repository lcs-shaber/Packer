//
//  PackingDescription.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingDescription: View {
    
    // MARK: Stored properties
    
    let weekDay: String
    let item: String
    
    // MARK: Computed properties
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Text (weekDay)
                    .bold()
                Spacer()
                
            }
            
                Text (item)

        }
        .padding()
        
        
    }
}

#Preview {
    PackingDescription(weekDay: "Monday:", item: "Call mom")
}
