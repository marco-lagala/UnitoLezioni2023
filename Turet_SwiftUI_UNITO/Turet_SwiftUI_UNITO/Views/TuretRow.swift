//
//  TuretRow.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 05/05/23.
//

import SwiftUI
import CoreLocation

struct TuretRow: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var turet: Turet
    
    var distance: String {
        let location = CLLocation(latitude: turet.latitude, longitude: turet.longitude)
        return locationManager.distanceString(from: location)
    }
    
    var marker: some View {
        ZStack {
            Circle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 32, height: 32)
            
            Image("marker")
                .resizable()
                .frame(width: 24, height: 28)
                .padding(.all, 8)
        }
    }
    
    var body: some View {
        HStack {
            
            VStack(alignment: .center) {
                marker
                            
                Text(distance)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .offset(y: -10)
            }
            .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(turet.address)
                
                Text(turet.name)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            if turet.underMaintenance {
                Image(systemName: "wrongwaysign.fill")
                    .foregroundColor(.red)
            }
        }
    }
}

struct TuretRow_Previews: PreviewProvider {
    
    static var previews: some View {
        List {
            TuretRow(turet: mockData[0])
            TuretRow(turet: mockData[1])
        }
        .environmentObject(
            LocationManager(mockLocation: CLLocation(latitude: 45.0703, longitude: 7.6869))
        )
    }
}
