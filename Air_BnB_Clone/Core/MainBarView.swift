//
//  MainBarView.swift
//  Air_BnB_Clone
//
//  Created by Dev on 24/08/24.
//

import SwiftUI

struct MainBarView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore",systemImage: "magnifyingglass") }
            WishlistView()
                .tabItem { Label("Whishlist", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainBarView()
}
