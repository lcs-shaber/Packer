//
//  NewItemView.swift
//  Packer
//
//  Created by Sophie Haber on 07.06.24.
//

import SwiftUI

struct NewItemView: View {
    
    // MARK: Stored properties
    
    // What items the user has inputed
    @State var givenInput = ""
    
    // The list of items to bring
    @State var itemList: [String] = []
    
    // MARK: Computed properties
    
    var body: some View {
        HStack{
            
            TextField("Add an item", text: $givenInput)
                .padding()
            
            Button {
                
                // Add the new to-do item
                itemList.append(givenInput)
                
                // Clear the input field
                givenInput = ""
                
            } label: {
                Text ("Add")
            }
            .padding()
        }
    }
}

#Preview {
    NewItemView()
}
