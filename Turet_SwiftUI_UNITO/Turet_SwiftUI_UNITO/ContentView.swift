//
//  ContentView.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var turets: [Turet]
    
    var body: some View {
        Text("Location: \(locationManager.userLocation?.coordinate.latitude ?? 0), \(locationManager.userLocation?.coordinate.longitude ?? 0)")

        TuretList(turets: turets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView(turets: mockData)
                .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
                .previewDisplayName("iPhone 13 Pro")
            
            ContentView(turets: mockData)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .previewDisplayName("iPhone SE")
            
        }
        .environmentObject(LocationManager())
        
    }
}
