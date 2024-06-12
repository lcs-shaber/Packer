//
//  OtherNewItemView.swift
//  Packer
//
//  Created by Sophie Haber on 12.06.24.
//

import SwiftUI

struct OtherNewItemView: View {
    
    // MARK: Stored properties
    
    // What events the user has inputed
    @State var givenEvent = ""
    
    // a refrence to the source of trueth for the parent app
    @Binding var addedInput: [AddedInput]
    
    // MARK: Computed properties
    
    var body: some View {
        
        HStack{
            
            TextField("Add an item", text: $givenEvent)
                .padding()
            
            
            Button {
                
                //added the new object
                let newEvent = AddedInput(
                    event: givenEvent
                )
                addedInput.append(newEvent)
                
                
                
                // Clear the input field
                givenEvent = ""
                
            } label: {
                Text ("Add")
            }
            .padding()
            
        }
    }
}

#Preview {
    OtherNewItemView( addedInput: Binding.constant(exampleEvents))
}
