//
//  MatchManager.swift
//  TinderTutorial
//
//  Created by Ping Layson on 9/5/2024.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchUser = user
        }
    }
}
