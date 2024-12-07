//
//  FirestoreNetworkingErrorReproApp.swift
//  FirestoreNetworkingErrorRepro
//
//  Created by Irwin Billing on 2024-12-07.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseAppCheck
import FirebaseCrashlytics
import FirebaseMessaging

@main
struct FirestoreNetworkingErrorReproApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate, MessagingDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}
