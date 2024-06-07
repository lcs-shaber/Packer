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
    
    // Is the sheet to add a new to-do item showing right now?
    @State var NewItemSheet = false
    
    // MARK: Computed properties
   
    var body: some View {
      
        NavigationStack {
            
        ZStack {
            
            // Background Color
             Color("OrangePink")
             .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Rectangle()
                        .fill(Color.lightPurple)
                        .frame(height: 100)
                        .padding(.horizontal)
                    
                        
                        Text (day.dayName)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    
                    
                    
                }
                
                
                    List (allDays){ currentCalendar in 
                        
                        NavigationLink {
                            AddPackingListView (day: currentCalendar)
                        } label: {
                            Text(day.reminders)
                                .foregroundColor(.gray)
                        }
                    }
                
                    .listStyle(.plain)
                    .background {
                        Color.clear
                    }
                }
                .padding()
            }
            
            //show the sheet to a new Item
            .sheet(
                isPresented: $NewItemSheet
            ) {
                Text("Hello, world!")
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
