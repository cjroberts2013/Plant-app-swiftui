//
//  ContentView.swift
//  Plant-app-swiftui
//
//  Created by Charles Roberts on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NextBtn: View {
    var body: some View {
        HStack {
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(Color("Primary"))
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(50)
    }
}
