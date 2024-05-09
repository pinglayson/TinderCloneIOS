//
//  CardModel.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id}
}
