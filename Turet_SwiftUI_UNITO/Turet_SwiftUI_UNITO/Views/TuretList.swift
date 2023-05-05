//
//  TuretList.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 01/05/23.
//

import SwiftUI

struct TuretList: View {
    var turets: [Turet]
    
    var body: some View {
        NavigationView {
            List(turets) { turet in
                NavigationLink {
                    Text("Pagina dettaglio per \(turet.address)")
                } label: {
                    TuretRow(turet: turet)
                }
            }
            .navigationTitle("Turet")
        }
    }
}

struct TuretList_Previews: PreviewProvider {
    static var previews: some View {
        TuretList(turets: mockData)
    }
}
