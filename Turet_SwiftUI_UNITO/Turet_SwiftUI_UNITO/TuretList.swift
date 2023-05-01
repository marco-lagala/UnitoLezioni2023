//
//  TuretList.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import SwiftUI

struct TuretList: View {
    var turets: [String]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(turets, id: \.self) { turet in
                    
                    NavigationLink {
                        
                    } label: {
                        Text(turet)
                    }
                }
            }
            .navigationTitle("Turet")
        }
    }
}

struct TuretList_Previews: PreviewProvider {
    static var previews: some View {
        TuretList(turets: ["Turet 1", "Turet 2"])
    }
}
