//
//  WeatherCell.swift
//  WeatherApp!!
//
//  Created by MDREZAUL KARIM on 4/6/17.
//  Copyright © 2017 Verizon. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
 
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    
    func configureCell(forecast: Forecast) {
        dayLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        maxTempLabel.text = "\(forecast.maxTemp)"
        minTempLabel.text = "\(forecast.minTemp)"
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }
    
    
}
