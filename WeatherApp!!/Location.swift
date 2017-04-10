//
//  Location.swift
//  WeatherApp!!
//
//  Created by MDREZAUL KARIM on 4/6/17.
//  Copyright © 2017 Verizon. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
