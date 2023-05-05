//
//  TuretRow.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 05/05/23.
//

import SwiftUI

struct TuretRow: View {
    var turet: Turet
    
    var marker: some View {
        ZStack {
            Circle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 32, height: 32)
            
            Image("marker")
                .resizable()
                .frame(width: 24, height: 30)
                .padding(.all, 8)
        }
    }
    
    var body: some View {
        HStack {
            
            VStack(alignment: .center) {
                marker
                            
                Text("500m")
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
    }
}
