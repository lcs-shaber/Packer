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
    
    // MARK: Computed properties
    
    var body: some View {
        
        ZStack {
            
            // Background Color
            Color("OrangePink")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Image (systemName: "plus")
                        .bold()
                        .foregroundColor(.darkBlue)
                        .font(.system(size: 30))
                        .padding(.horizontal)
                }
                
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
                
                List {
                   
                    Text (day.reminders2)
                    
                }
                .listStyle(.inset)
                .padding(.horizontal)
                .padding(.bottom)
                
            }
        }
    }
}

#Preview {
    AddPackingListView( day: monday)
}
