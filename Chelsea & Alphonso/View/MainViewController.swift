//
//  ViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 7/22/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    


   @IBOutlet weak var dateLabelOutlet: UILabel!
    let formatter = DateFormatter()
      
    let userCalender = Calendar.current
    
    let requestedComponent : Set<Calendar.Component> = [
        Calendar.Component.month,
        Calendar.Component.day,
        Calendar.Component.hour,
        Calendar.Component.minute,
        Calendar.Component.second
    ]
    
    override func viewDidLoad() {
        
       
        
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(printTime), userInfo: nil, repeats: true)
        
        timer.fire()
        
            }


   // Timer customization
    func printTime() {
        formatter.dateFormat = "MM/dd/yy hh:mm:ss a"
        let startTime = Date()
        let endTime = formatter.date(from: "04/21/18 12:00:00 a")
        let timeDifference = userCalender.dateComponents(requestedComponent, from: startTime, to: endTime!)
        
        dateLabelOutlet.text = "\(timeDifference.month!) Months \(timeDifference.day!) Days \(timeDifference.minute!) Min \(timeDifference.second!) Sec"
    }
}





