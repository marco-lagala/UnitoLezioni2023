//
//  Turet.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import Foundation

struct Turet: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var address: String
    var buildingDate: String
    var underMaintenance: Bool
    var latitude: Double
    var longitude: Double
}

var mockData: [Turet] = load("turet.json")
