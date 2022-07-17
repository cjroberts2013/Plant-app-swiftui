//
//  WelcomeScreenView.swift
//  Plant-app-swiftui
//
//  Created by Charles Roberts on 7/17/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Image("img_background2")
                .resizable()
                .overlay(LinearGradient(colors: [Color.black.opacity(0.25), Color.black.opacity(0.75)], startPoint: .topLeading, endPoint: .bottomLeading))
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Image("logo")
                
                Spacer()
                Spacer()
                Spacer()
                
                Text("Make Your")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Text("Greener House")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Text("Decorate your house to make \nit look greener")
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.top, 8)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    NextBtn()
                }
            }
            .padding()
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
