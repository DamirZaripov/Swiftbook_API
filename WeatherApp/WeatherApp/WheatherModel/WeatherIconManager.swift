//
//  WeatherIconManager.swift
//  WeatherApp
//
//  Created by Дамир Зарипов on 19.01.18.
//  Copyright © 2018 Дамир Зарипов. All rights reserved.
//

import Foundation
import UIKit

enum WeatherIconManager: String {
    
    case ClearDay = "clear-day"
    case ClearNight = "clear-night"
    case Rain = "rain"
    case Snow = "snow"
    case Sleet = "sleet"
    case Wind = "wind"
    case Fog = "fog"
    case Cloudy = "cloudy"
    case PartlyCloudyDay = "partly-cloud-day"
    case PartlyCloudNight = "partly-cloud-night"
    case UnpredicatedIcon = "unpredicated-icon"
    
    init(rawValue: String) {
        switch rawValue {
        case "clear-day": self = .ClearDay
        case "clear-night": self = .ClearNight
        case "rain": self = .Rain
        case "snow": self = .Snow
        case "sleet": self = .Sleet
        case "wind": self = .Wind
        case "fog": self = .Fog
        case "cloudy": self = .Cloudy
        case "partly-cloud-day": self = .PartlyCloudyDay
        case "partly-cloud-night": self = .PartlyCloudNight
        default: self = .UnpredicatedIcon
        }
    }
}

extension WeatherIconManager {
    var image: UIImage {
        guard let weatherImage = UIImage(named: self.rawValue) else { return #imageLiteral(resourceName: "icon-error") }
        return weatherImage
    }
}
