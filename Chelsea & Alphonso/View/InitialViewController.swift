//
//  InitialViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/9/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    // This method performs a Segue to a new viewController
    func switchViews() {
        DispatchQueue.main.async() {
            self.performSegue(withIdentifier: "initialSegue", sender: self)
            
        }
        
        
    }
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    func viewDidAppear() {
        
        super.viewDidAppear(true)
        
        func setView(view: UIView, hidden: Bool) {
            UIView.transition(with: view, duration: 2, options: .transitionCrossDissolve, animations: { _ in
                view.isHidden = hidden
            }, completion: nil)
            
            setView(view: NameLabel, hidden: true)
            setView(view: dateLabel, hidden: true)
        }
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Using a timer to call the above method after a specified time interval
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector (switchViews), userInfo: nil, repeats: true)
        
    
            }

}
