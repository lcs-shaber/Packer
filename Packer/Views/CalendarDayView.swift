//
//  CalendarDayView.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct CalendarDayView: View {
    // MARK: Stored properties
    
    let day: Calendar
    
    @State private var event: String = ""
    
    // Is the sheet to add a new to-do item showing right now?
    @State var NewItemSheet = false
    
    //Source of truth for the added object
    @State private var courses: [Course] = exampleCourses
    
    // MARK: Computed properties
   
    var body: some View {
      
        NavigationStack {
            
        ZStack {
            
            // Background Color
             Color("OrangePink")
             .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                //day description
                    Rectangle()
                        .fill(Color.lightPurple)
                        .frame(height: 100)
                        .padding(.horizontal)
                    
                        
                        Text (day.dayName)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    
                    
                    
                }
                
           
                
                // Show the user's items
                    List (courses) { currentCourse in
                        
                      
                        NavigationLink {
                            ThingsToBringForACourseView(
                                course: currentCourse
                            )
                        } label: {
                            Text (currentCourse.name)
                        }

                        
                    }
                    .listStyle(.plain)
                
                
                
                }
                .padding()
            }
            
            //show the sheet to a new Item
            .sheet(
                isPresented: $NewItemSheet
            ) {
                AddCourseView(addedInput: $courses
                
                )
                    .presentationDetents([.medium, .fraction(0.15)])
            }
            
            // Add a tool bar to the top of the interface
            // NOTE: For a toolbar to appear, it must be
            //       inside a NavigationView or NavigationStack.
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        
                        NewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .bold()
                            .font(.title2)
                            .foregroundColor(.darkPurple)
                    }
                }
            }
            
        }
        .accentColor(.darkPurple)
    }
}

#Preview {
    CalendarDayView(
        day: monday
    )
}
