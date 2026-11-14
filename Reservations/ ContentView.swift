//
//  ContentView.swift
//  Reservations
//
//  Created by B7 RAFA on 10/11/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSplash = true

    var body: some View{
        
        ZStack {
                if showSplash {
                    SplashScreenView()
                        .transition(.opacity)
                } else {
                    MainTabView() .transition(.opacity)
                }
        } .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        showSplash = false }
                }
          }
    }
}

#Preview {
    ContentView()
}
