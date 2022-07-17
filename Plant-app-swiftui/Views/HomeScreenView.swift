//
//  HomeScreenView.swift
//  Plant-app-swiftui
//
//  Created by Charles Roberts on 7/17/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            Color("bg_color ")
                .ignoresSafeArea()
            
            VStack {
                HeaderView()
                
                CategoriesView()
                
                SectionTitleView(title: "Recommended")
                

                Image("image_2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)


            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 52, height: 52)
        }
    }
}

var tabs = ["All", "Indoor", "Outdoor", "Garden"]

struct CategoryBtn: View {
    
    var text: String
    @Binding var selected: String
    var animation: Namespace.ID

    var body: some View {
        Button(action: {
            // action
            withAnimation(.spring(), {
                selected = text
            })
        }) {
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(selected == text ? .white : Color("Primary"))
                .padding()
                .padding(.horizontal)
                .background(ZStack {
                    if (selected == text) {
                        Color("Primary")
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                })
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.16),radius: 16, x: 4, y: 4)
        }
    }
}

struct CategoriesView: View {
    @State private var selectedTab = tabs[0]
    @Namespace var animation
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    CategoryBtn(text: tab, selected: $selectedTab, animation: animation)
                }
            }
            .padding(.vertical, 24)
        }
    }
}

struct SectionTitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary"))
            
            Spacer()
            
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(Color("Primary").opacity(0.5))
        }
    }
}
