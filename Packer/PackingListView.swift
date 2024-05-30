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
        
        ZStack{
            // Background Color
            Color (.green)
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    
                    Rectangle()
                        .fill(.gray)
                    Text ("Packing List")
                    
                    
                }
                
                HStack {
                    
                    Text ("hh")
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    PackingListView()
}
