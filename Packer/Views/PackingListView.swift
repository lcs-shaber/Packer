//
//  PackingListView.swift
//  Packer
//
//  Created by Sophie Haber on 30.05.24.
//

import SwiftUI

struct PackingListView: View {
    
    // MARK: Stored properties
    
    //
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            
        ZStack{
            // Background Color
            Color("OrangePink")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
             
                //the header
                    Rectangle()
                        .fill(Color.lightGray)
                        .frame(height: 100)
                        .padding()
                    Text ("Packing List")
                        .bold()
                        .font(.title2)
                    
                    
                }
                
                
                //a list of items for each day
                         List (allDays) { currentCalendar in
                 
                         label: do {
                                PackingDescription(day: currentCalendar)
                          }
                         
                          }
                         .listStyle(.plain)
                         .background {
                             Color.clear
                         }
                         .padding()
                         
                     }
            }
        }
    }
}

#Preview {
    PackingListView()
}
