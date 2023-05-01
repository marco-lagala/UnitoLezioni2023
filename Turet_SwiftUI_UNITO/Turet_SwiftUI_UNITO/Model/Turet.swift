//
//  Turet.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import Foundation

struct Turet: Hashable, Codable, Identifiable {
    var id: Int
    var address: String
    var buildingDate: String
    var underMaintenance: Bool
}


var mockData: [Turet] = load("turet.json")
