//
//  User.swift
//  GreenGuard
//
//  Created by Aaiyan Virji on 2024-03-24.
//

import Foundation
struct User: Codable {
    let id: String
    let name: String
    let email : String
    let joined: TimeInterval
}
