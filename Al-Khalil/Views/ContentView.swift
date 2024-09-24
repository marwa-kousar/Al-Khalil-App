//
//  ContentView.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-15.
//

import SwiftUI

struct ContentView: View {
    // This state will change after a delay to switch to the home view
    @State private var isActive: Bool = false

    var body: some View {
        // If the splash screen is active, show SplashView, otherwise show HomeView
        if isActive {
            HomeView()
        } else {
            SplashView()
                .onAppear {
                    // Change to home view after a 3-second delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

