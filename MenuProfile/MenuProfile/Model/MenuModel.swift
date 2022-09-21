//
//  MenuModel.swift
//  MenuProfile
//
//  Created by Jackeline Pires De Lima on 20/09/22.
//

import Foundation

// MARK: - MenuProfileGroup
struct MenuProfileGroup: Codable {
    let group: [MenuProfile]
}

// MARK: - MenuProfile
struct MenuProfile: Codable {
    let title: String
    let child: [Item]
}

// MARK: - Item
struct Item: Codable {
    let title: String
}
