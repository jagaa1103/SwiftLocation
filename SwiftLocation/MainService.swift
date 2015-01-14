//
//  MainService.swift
//  SwiftLocation
//
//  Created by Jagaa on 1/13/15.
//  Copyright (c) 2015 smartmongol. All rights reserved.
//

import Foundation

class MainService{
    
    let location = LocationService()
    
    var mainService: MainService{
        struct Main{
            static let instance: MainService = MainService()
        }
        return Main.instance
    }
    
    func startGPS(){
        location.startLocation()
    }
    func stopGPS(){
    	location.stopLocation()
    }
}