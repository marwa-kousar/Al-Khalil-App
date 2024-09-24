//
//  Al_KhalilApp.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-15.
//

import SwiftUI
import Firebase  // Import Firebase

@main
struct Al_KhalilApp: App {
    
    // Firebase Initialization
    init() {
        FirebaseApp.configure()  // Initialize Firebase here
    }


    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

