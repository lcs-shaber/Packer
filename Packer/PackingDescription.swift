//
//  PackingDescription.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingDescription: View {
    
    // MARK: Stored properties
    
   // let reminder: Reminders
    
    // MARK: Computed properties
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Text ("Monday:")
                    .bold()
                Spacer()
                
            }
            
                Text ("Todo")

        }
        .padding()
        
        
    }
}

#Preview {
    PackingDescription()
}
