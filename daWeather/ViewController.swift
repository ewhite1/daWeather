//
//  ViewController.swift
//  daWeather
//
//  Created by Edward White on 6/17/16.
//  Copyright © 2016 edwardWhite. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
      
        
        // json test code first this will be removed in the main master
        
        let urlString = "\(URL_BASE)\(URL_ZIP)\(URL_UNITS)\(API_KEY)"
        Alamofire.request(.GET, urlString)
        .responseJSON { response in
        let result = response.result
         
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    print(name)
                }
                if let main = dict["main"] as AnyObject! {
                    print(main)
                }
               
                // todo- grab the array of main, and print temp! doing this forcefully is a bad idea. But
                // I need to grab it out as a double. Also when printing it, convert it. I can do this with
                // nsstring to format it out. 
        }
        
     }
  }
}

