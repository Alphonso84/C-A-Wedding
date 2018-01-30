//
//  WebViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 8/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var todoItems = [String]()
class WeddingTodo: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text = todoItems[indexPath.row]
        cell.textLabel?.text = todoItems[indexPath.row]
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todoItems.count
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            todoItems.remove(at: indexPath.row)
            tableView.reloadData()
           
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }


}






