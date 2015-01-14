//
//  LocationService.swift
//  SwiftLocation
//
//  Created by Jagaa on 1/13/15.
//  Copyright (c) 2015 smartmongol. All rights reserved.
//

import Foundation
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate{
    
    let locationManager = CLLocationManager()

    func startLocation(){
        println("locationService start...")
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    func stopLocation(){
        println("locationService stop...")
        locationManager.stopUpdatingLocation()
    }
    
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        if let location = locations.first as? CLLocation {
            
            println("lat:\(location.coordinate.latitude)  lon:\(location.coordinate.longitude)")

        }
    }
}
