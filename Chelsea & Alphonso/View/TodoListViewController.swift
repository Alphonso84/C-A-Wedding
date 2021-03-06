//
//  WebViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 8/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase



class WeddingTodo: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var ref:DatabaseReference?
    var handle:DatabaseHandle?
   
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text = todoItems?[indexPath.row]
        cell.textLabel?.text = todoItems?[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (todoItems?.count)!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       //Attempt To Add CheckMark and save its state in UserDefaults
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
        UserDefaults.standard.set(tableView.cellForRow(at: indexPath)?.accessoryType, forKey: "cellAccessory")
        
        
    }
    
   
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        ref = Database.database().reference()
//        handle = ref?.child("list").observe(DataEventType.value, with: {(snapshot) in
//            
//        })
        if editingStyle == UITableViewCellEditingStyle.delete {
            todoItems?.remove(at: indexPath.row)
            ref?.child("list").removeValue()
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
        ref = Database.database().reference()
        handle = ref?.child("list").observe(.childAdded, with: { (snapshot) in
            if let item = snapshot.value as? String {
                todoItems?.append(item)
                self.tableView.reloadData()
            }
        })
    }


}






