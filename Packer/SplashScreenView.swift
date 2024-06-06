//
//  SplashScreenView.swift
//  Packer
//
//  Created by Sophie Haber on 06.06.24.
//

import SwiftUI

struct SplashScreenView: View {
    
    // MARK: Stored properties
    
    @Binding var getsStarted: Bool
    
    
    // MARK: Computed properties
    
    var body: some View {
        ZStack{
            
            //first layer
            Color.orangePink
                .ignoresSafeArea()
            
            VStack{
                //second layer
                
                HStack{
                    
                    Spacer()
                    
                    Text ("Packer")
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    Spacer()
                    
                }.padding()
               
                HStack{
                    
                    Spacer()
                    Spacer()
                    
                    Text ("Stay organized")
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                }.padding(.horizontal)
                
                Spacer()
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
                    .foregroundColor(.logoPurple)
                
                Spacer()
                
                Text ("Get Started")
                    .bold()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .onTapGesture {
                        getsStarted = true
                    }
                Spacer()
            }
            
        }
    }
}

#Preview {
    SplashScreenView(getsStarted: Binding.constant(false))
}
