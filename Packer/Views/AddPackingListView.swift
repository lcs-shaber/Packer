//
//  AddPackingListView.swift
//  Packer
//
//  Created by Sophie Haber on 31.05.24.
//

import SwiftUI

struct AddPackingListView: View {
    
    // MARK: Stored properties
    
    let day: Calendar
    
    // Is the sheet to add a new to-do item showing right now?
    @State var presentingNewItemSheet = false
    
    // The list of items to bring
    @State var itemList: [String] = []
    
    // MARK: Computed properties
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                // Background Color
                Color("OrangePink")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("What do you need to bring?")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color.darkGray)
                        .padding(.bottom)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 30 )
                            .fill(Color.darkBlue)
                            .frame(height: 70)
                            .padding(.horizontal)
                        
                        Text (day.reminders)
                            .foregroundColor(.white)
                            .bold()
                            .font(.title)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .padding()
                            .foregroundColor(.white)
                    // Show the user's items
                    Text("packing items")
                        .font(.title3)
                    }
                    
                    
                }
            }
            
            //show the sheet to a new Item
            .sheet(
                isPresented: $presentingNewItemSheet
            ) {
                NewItemView()
                    .presentationDetents([.medium, .fraction(0.15)])
            }
            
            // Add a tool bar to the top of the interface
            // NOTE: For a toolbar to appear, it must be
            //       inside a NavigationView or NavigationStack.
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .bold()
                            .font(.title2)
                            .foregroundColor(.darkBlue)
                    }
                }
            }
            
        }
    }
}

#Preview {
    AddPackingListView( day: monday)
}
