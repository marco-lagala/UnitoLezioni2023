//
//  LocationManager.swift
//  Turet_SwiftUI_UNITO
//
//  Created by Marco La Gala on 12/05/23.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    private let locationManager = CLLocationManager()
    
    @Published var userLocation: CLLocation?
    
    // If a mock user is provided to the mockLocation it will replace the initial user.
    init(mockLocation: CLLocation? = nil) {
        if let location = mockLocation {
            self.userLocation = location
        }
    }
    
    func startUpdatingLocation() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func stopUpdatingLocation() {
        locationManager.stopUpdatingLocation()
    }
    
    func distanceString(from point: CLLocation) -> String {
        guard let userLocation = userLocation else { return "" }
        let distanceInMeters = userLocation.distance(from: point)
        let distanceInKilometers = distanceInMeters / 1000
        
        let formatter = MeasurementFormatter()
        
        var measurement = Measurement(value: distanceInMeters, unit: UnitLength.meters)
        formatter.numberFormatter.maximumFractionDigits = 0
        
        if distanceInKilometers > 1 {
            measurement = Measurement(value: distanceInKilometers, unit: UnitLength.kilometers)
            formatter.numberFormatter.maximumFractionDigits = 1
        }
        
        formatter.unitOptions = [.providedUnit, .naturalScale]
        formatter.unitStyle = .short
        
        
        return formatter.string(from: measurement)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        userLocation = locations.last
    }
}
