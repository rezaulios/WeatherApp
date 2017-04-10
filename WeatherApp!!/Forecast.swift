//
//  Forecast.swift
//  WeatherApp!!
//
//  Created by MDREZAUL KARIM on 4/5/17.
//  Copyright © 2017 Verizon. All rights reserved.
//

import UIKit
import Alamofire
var forecasts = [Forecast]()
class Forecast {
    
    var _date: String!
    var _weatherType: String!
    var _maxTemp: Double!
    var _minTemp: Double!
    
    var date: String  {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    var maxTemp: Double {
        if _maxTemp == nil {
            _maxTemp = 0.0
        }
        return _maxTemp
    }
    var minTemp: Double {
        if _minTemp == nil {
            _minTemp = 0.0
        }
        return _minTemp
    }
            
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                    
                    let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                    let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                    self._minTemp = kelvinToFarenheit
                    print(self._minTemp)
            }
            if let max = temp["max"] as? Double {
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                self._maxTemp = kelvinToFarenheit
                print(self._maxTemp)
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main.capitalized
                print(self._weatherType)
            }
        }


        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.timeStyle = .none
            dateFormatter.dateFormat = "EEEE"
            self._date = unixConvertedDate.dayOfTheWeek()
            print(self._date)
        }
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
