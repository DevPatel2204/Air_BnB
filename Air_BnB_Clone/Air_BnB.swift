//
//  Air_BnB_CloneApp.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct Air_BnB: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ExploreView()
        }
    }
}
