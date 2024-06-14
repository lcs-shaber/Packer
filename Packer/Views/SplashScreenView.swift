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
            //background gradient
            RadialGradient(gradient: Gradient(colors: [.gradientYellow,.gradientOrange,.gradientPink,.gradientPurple]),
            center: .center,
            startRadius: 0, endRadius: 400)
                .ignoresSafeArea()
            
            VStack{
                //second layer
                
               
                //the title layer
                HStack{
                    
                    Spacer()
                    
                    Text ("Packer")
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    Spacer()
                    
                }.padding()
             
                
                //the slogan layer
                HStack{
                    
                    Spacer()
                    Spacer()
                    
                    Text ("Stay organized")
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                }
                
                
              
            //the logo
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                    .position(x: 197, y: 233)
                    .foregroundColor(.logoPurple)
                
              
          //the get started 'button'
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
