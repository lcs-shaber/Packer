//
//  PackingDescription.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingDescription: View {
    
    // MARK: Stored properties
    
    let item: PackingItem
    
    // MARK: Computed properties
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Text (item.weekDay)
                    .bold()
                    .font(.title3)
                Spacer()
                
            }
            
            Text (item.item)

        }
        
        
        
    }
}

#Preview {
    PackingDescription(item: monday2)
}
