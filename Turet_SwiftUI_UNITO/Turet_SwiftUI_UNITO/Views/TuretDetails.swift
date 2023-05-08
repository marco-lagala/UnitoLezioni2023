//
//  TuretDetails.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 05/05/23.
//

import SwiftUI
import MapKit

struct TuretDetails: View {
    var turet: Turet
    
    let coordinate = CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945)
    var region: MKCoordinateRegion {
            MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

    var body: some View {
            
            VStack(alignment: .leading) {
                
                Text(turet.name)
                    .font(.title)
                
                Text(turet.address)
                    .font(.subheadline)
                
                Map(coordinateRegion: .constant(region))
                    .frame(height: 300)
                    .padding(.horizontal, -15)
                    .padding(.vertical, 5)
                
                Text("Informazioni")
                    .font(.title2)
                    .bold()
                
                HStack(alignment: .top) {
                    VStack {
                        Image(systemName: "drop.degreesign.slash")
                            .font(.title)
                            .padding(.vertical, 5)
                        Text(turet.underMaintenance ? "In manutenzione" : "Non in manutenzione")
                    }
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 100)
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "building.2.crop.circle")
                            .font(.title)
                            .padding(.vertical, 5)
                        Text(turet.buildingDate)
                    }
                    .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "pawprint.circle")
                            .font(.title)
                            .padding(.vertical, 5)
                        Text("Cani")
                    }
                    .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
    }
}

struct TuretDetails_Previews: PreviewProvider {
    static var previews: some View {
        TuretDetails(turet: mockData[0])
        TuretDetails(turet: mockData[1])
    }
}
