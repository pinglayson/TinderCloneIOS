//
//  MockData.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["meganFox1","meganFox2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "David Beckham",
            age: 32,
            profileImageURLs: ["davidBeckham1","davidBeckham2","davidBeckham3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Sydney Sweeney",
            age: 30,
            profileImageURLs: ["sydneySweeney1","sydneySweeney2","sydneySweeney3"]
        ),
    ]
    
}
