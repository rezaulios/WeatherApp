//
//  Constants.swift
//  WeatherApp!!
//
//  Created by MDREZAUL KARIM on 4/4/17.
//  Copyright © 2017 Verizon. All rights reserved.
//

import Foundation


let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "13946eb1436a811a624db3a4d3e774ebc2c"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://samples.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=46eb1436a811a624db3a4d3e774ebc2c"

let FORECAST_URL = "http://samples.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=46eb1436a811a624db3a4d3e774ebc2c"

