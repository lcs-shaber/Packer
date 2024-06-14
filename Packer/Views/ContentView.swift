//
//  ContentView.swift
//  Packer
//
//  Created by Sophie Haber on 29.05.24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    //
    
    // MARK: Computed properties
    var body: some View {
        
       
        //Tab bar
        TabView (selection: Binding.constant(1)) {
         
        //the view so you can see the calendar with the upcoming events
            CalendarView()
                .tabItem {
                    Image (systemName: "calendar")
                    Text ("Calendar")
                } .tag (1)
         
        //the view so you have a list for each day, where you can see what you need to bring
            PackingListView()
                .tabItem {
                    Image (systemName: "list.bullet.clipboard")
                    Text ("Packing List")
                } .tag (2)
        }
        
        //Change the colour of the currently active tab item
        
        .accentColor(.black)
        
    }
}

#Preview {
    
   ContentView()
    
}
