//
//  NewItemView.swift
//  Packer
//
//  Created by Sophie Haber on 07.06.24.
//

import SwiftUI

struct NewItemView: View {
    
    // MARK: Stored properties
    
    @State private var object: String = ""
    
    // What items the user has inputed
    @State var givenInput = ""
    
    // The list of items to bring
    @State var itemList: [String] = []
    
    //Source of truth for the added object
    @State private var addedItem: [AddedItem] = exampleObjects
    
    // MARK: Computed properties
    
    var body: some View {
        HStack{
            
            TextField("Add an item", text: $givenInput)
                .padding()
            
            
            Button {
                
                //added the new object
                let newObject = AddedItem(
                    object: object
                )
                addedItem.append(newObject)
                
                
                
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
    NewItemView(
        
    )
}
