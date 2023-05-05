//
//  TuretDetails.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 05/05/23.
//

import SwiftUI

struct TuretDetails: View {
    var turet: Turet
    
    var body: some View {
        VStack {
            Text(turet.name)
            Text(turet.address)
            Text(turet.buildingDate)
            Text(turet.underMaintenance ? "In manutenzione" : "Non in manutenzione")
        }
    }
}

struct TuretDetails_Previews: PreviewProvider {
    static var previews: some View {
        TuretDetails(turet: mockData[1])
    }
}
