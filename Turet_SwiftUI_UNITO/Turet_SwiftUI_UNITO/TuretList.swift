//
//  TuretList.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 18/05/23.
//

import SwiftUI

struct TuretList: View {
    let turets: [String] = ["Elements1", "Elements2", "Elements3", "Elements4"]
    
    var body: some View {
        List(turets, id: \.self) { turet in
            Text(turet)
        }
    }
}

struct TuretList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            NavigationView {
                TuretList()
                    .navigationTitle("Titolo di prova")
            }
            .previewDisplayName("Lista")
            
            VStack {
                Text("Sezione 1")
                TuretList()
                Text("Sezione 2")
                TuretList()
            }
            .previewDisplayName("Sezione")
        }
    }
}
