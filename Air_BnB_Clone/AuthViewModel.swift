//
//  AuthViewModel.swift
//  Air_BnB_Clone
//
//  Created by Dev on 07/09/24.
//
import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var user: User?

    init() {
        // Listen for authentication state changes
        _ = Auth.auth().addStateDidChangeListener { [weak self] auth, user in
            self?.user = user
        }
    }
    

    func signOut() {
        do {
            try Auth.auth().signOut()
            self.user = nil
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}

