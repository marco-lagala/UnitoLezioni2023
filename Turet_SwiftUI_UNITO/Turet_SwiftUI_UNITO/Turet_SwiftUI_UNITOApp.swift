//
//  Turet_SwiftUI_UNITOApp.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import SwiftUI

@main // This is the app entry point
struct Turet_SwiftUI_UNITOApp: App {
    var turets: [Turet] = load("turet.json")
    
    var body: some Scene {
        WindowGroup {
            ContentView(turets: turets)
        }
    }
    
}
