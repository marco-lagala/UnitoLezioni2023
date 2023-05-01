//
//  ContentView.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import SwiftUI

struct ContentView: View {
    
    var turets = ["Turet 1", "Turet 2", "Turet 3"]
    
    var body: some View {
        
        List {
            ForEach(turets, id: \.self) { turet in
                Text(turet)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
                .previewDisplayName("iPhone 13 Pro")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .previewDisplayName("iPhone SE")
        }
    }
}
