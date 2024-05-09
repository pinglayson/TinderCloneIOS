//
//  TinderTutorialApp.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import SwiftUI

@main
struct TinderTutorialApp: App {
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
