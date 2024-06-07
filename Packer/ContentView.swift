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
            
            CalendarView()
                .tabItem {
                    Image (systemName: "calendar")
                    Text ("Calendar")
                } .tag (1)
            
            PackingListView()
                .tabItem {
                    Image (systemName: "list.bullet.clipboard")
                    Text ("Packing List")
                } .tag (2)
        }
        
        //Change the colour of the currently active tab item
        
        .accentColor(.red)
        
    }
}

#Preview {
    
   ContentView()
    
}
