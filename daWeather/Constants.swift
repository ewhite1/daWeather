//
//  Constants.swift
//  daWeather
//
//  Created by Edward White on 6/17/16.
//  Copyright © 2016 edwardWhite. All rights reserved.
//

import Foundation

public let URL_BASE = "http://api.openweathermap.org/data/2.5/weather?zip="
public let URL_ZIP = "77806"
public let URL_UNITS = ",us&units=imperial&appid="
public let API_KEY = getAPIKey()


func getAPIKey() -> String {
    var keys: NSDictionary?
    var applicationId: String?
    if let path = NSBundle.mainBundle().pathForResource("keys", ofType: "plist") {
        keys = NSDictionary(contentsOfFile: path)
    }
    if let dict = keys {
        applicationId = dict["applicationId"] as? String
        
    }
    return applicationId!
}
