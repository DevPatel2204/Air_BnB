//
//  ContentView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
//    Use @StateObject to observe the view model
    @StateObject var authViewModel = AuthViewModel()

    var body: some View {
        if let _ = authViewModel.user {
            // Show ExploreView if the user is signed in
            ExploreView()
        } else {
            // Show loginPage if the user is not signed in
            loginPage()
        }
    }
}

#Preview {
    ContentView()
}
