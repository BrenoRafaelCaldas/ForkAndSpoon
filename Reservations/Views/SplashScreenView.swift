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
            
            Color(.black)
                .ignoresSafeArea()
            
            Image("LogoSplash")
                .resizable()
                .scaledToFill()

        }
    }
}

#Preview {
    SplashScreenView()
}
