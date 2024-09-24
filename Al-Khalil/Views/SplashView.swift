//
//  SplashView.swift
//  Al-Khalil
//
//  Created by marwa kousar on 2024-09-15.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("Background")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 400, maxHeight: .infinity)
                .cornerRadius(20)
                .ignoresSafeArea()

            // Logo and App Name
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 115, height: 115)
                    .cornerRadius(20)

                HStack {
                    Text("AL KHALIL")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .bold()
                        .padding(.top, 10)

                    Text("ACADEMY")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                        .bold()
                        .padding(.top, 10)
                }
            }
            .padding()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
