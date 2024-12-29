//
//  GrandPashaGuessApp.swift
//  GrandPashaGuess
//
//  Created by Nicolae Chivriga on 14/12/2024.
//

import SwiftUI

@main
struct GrandPashaGuessApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoadingView()
            }
        }
    }
}
