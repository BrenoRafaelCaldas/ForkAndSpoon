//
//  SplashScreenView.swift
//  Reservations
//
//  Created by B7 RAFA on 14/11/2026.
//

import SwiftUI

struct SplashScreenView: View {
    
    
    
    var body: some View {
        
        ZStack {
            
            Color("blueLogo")
                .ignoresSafeArea()
            
            Image("LogoSplash")
                .resizable()
                .frame(width: 800, height: 500)
        }
    }
}

#Preview {
    SplashScreenView()
}
