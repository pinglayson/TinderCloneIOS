//
//  CardService.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import Foundation

struct CardService {
    
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0)})
    }
}
