//
//  ViewController.swift
//  WeatherApp
//
//  Created by Дамир Зарипов on 19.01.18.
//  Copyright © 2018 Дамир Зарипов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    let feelsLikeString = "Feels like: "
    let baseURL = URL(string: "https://api.darksky.net/forecast/c3e335dd391b358b666f98795202a664/")
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWith(currentWeather: currentWeather)
        
//        let fullURL = URL(string: "37.8267,-122.4233", relativeTo: baseURL)
//
//        let sessionConfiguration = URLSessionConfiguration.default
//        let session = URLSession(configuration: sessionConfiguration)
//
//        let reques = URLRequest(url: fullURL!)
//
//        let dataTask = session.dataTask(with: fullURL!) { (data, response, error) in
//            <#code#>
//        }
//        dataTask.resume()
    }

    func updateUIWith(currentWeather: CurrentWeather) {
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearentTemperatureLabel.text = feelsLikeString + currentWeather.appearentTemperatureString
        self.humidityLabel.text =  currentWeather.humidityString
    }

}


