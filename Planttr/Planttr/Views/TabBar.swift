//
//  TabBar.swift
//  Planttr
//
//  Created by Necati Bozkurt on 5.07.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(Color.init("costumGreen"))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
