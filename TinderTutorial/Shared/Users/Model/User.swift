//
//  User.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
