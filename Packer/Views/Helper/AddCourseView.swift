//
//  OtherNewItemView.swift
//  Packer
//
//  Created by Sophie Haber on 12.06.24.
//

import SwiftUI

struct AddCourseView: View {
    
    // MARK: Stored properties
    
    // What events the user has inputed
    @State var givenEvent = ""
    
    // a refrence to the source of trueth for the parent app
    @Binding var addedInput: [Course]
    
    // MARK: Computed properties
    
    var body: some View {
        
        HStack{
            
        //textfield for adding a course
            TextField("Add a course", text: $givenEvent)
                .padding()
            
          
        //button to add a new object
            Button {
                
                //added the new object
                let newEvent = Course(
                    name: givenEvent
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
    AddCourseView( addedInput: Binding.constant(exampleCourses))
}
