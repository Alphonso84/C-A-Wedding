//
//  Wedding.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import Foundation
import UIKit





class Wedding: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sections = ["GroomsMen", "BridesMaids"]
    var groomsMen: [Friend] = []
    var bridesMaids: [Friend] = []
    
    let Aaron = Friend(name: "Aaron Seabron", job: "Sales Director at Adidas", image: #imageLiteral(resourceName: "Aaron"))
    let Neville = Friend(name: "Neville Sumiran", job: "Civil Engineer", image: #imageLiteral(resourceName: "Neville.JPG"))
    let Jonathan = Friend(name: "Jonathan Overall", job: "Pastor", image: #imageLiteral(resourceName: "Jonathan.JPG"))
    let Joseph = Friend(name: "Joseph Sensley", job: "Best Man", image: #imageLiteral(resourceName: "Joseph.JPG"))
    let Len = Friend(name: "Len Lacanlale", job: "Pharmacy Technician", image: #imageLiteral(resourceName: "Len.JPG"))
    
    
    let Gena = Friend(name: "Gena Brown", job: "", image: #imageLiteral(resourceName: "Gena.JPG"))
    let Chereese = Friend(name: "Chereese Bedingfield Rowe", job: "", image:#imageLiteral(resourceName: "Chereese.JPG"))
    let Alecia = Friend(name: "Alecia Harris", job: "", image: #imageLiteral(resourceName: "Alecia.JPG"))
    let Kristy = Friend(name: "Kristy Singletary", job: "", image: #imageLiteral(resourceName: "Kristy.JPG"))
    let Blake = Friend(name: "Blake", job: "", image: #imageLiteral(resourceName: "Blake.JPG"))
    let Ashley = Friend(name: "Ashley Seabron", job: "", image: #imageLiteral(resourceName: "Ashley.JPG"))
    let Danielle = Friend(name: "Danielle Sensley", job: "Marketing Manager", image: #imageLiteral(resourceName: "Danielle.JPG"))
    let Brittney_C = Friend(name: "Brittney Coleman", job: "", image: #imageLiteral(resourceName: "BrittneyC.JPG"))
    let Brittney_R = Friend(name: "Brittney Richardson", job: "", image: #imageLiteral(resourceName: "BrittneyR.JPG"))
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        groomsMen = [ Aaron, Neville, Jonathan, Joseph, Len]
        bridesMaids = [Gena, Chereese, Alecia, Kristy, Blake, Ashley, Danielle, Brittney_C, Brittney_R]
        tableView.reloadData()
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
        
        return "Groomsmen"
        } else {
            return "Bridesmaids"
        }
        
    }
        
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let sectionNumber = indexPath.section
    
        if sectionNumber == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            cell.textLabel?.text = groomsMen[indexPath.row].name
            
            cell.imageView?.image = groomsMen[indexPath.row].image
            return cell
        } else {
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            cell.textLabel?.text = bridesMaids[indexPath.row].name
            cell.imageView?.image = bridesMaids[indexPath.row].image
            return cell
            }
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return groomsMen.count
        } else {
            return bridesMaids.count
        }
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let detailController = WeddingDetailController()
//        let sectionNumber = indexPath.section
//
//        if sectionNumber == 0 {
//            detailController.detailImageView.image = groomsMen[indexPath.row].image
//            detailController.nameLabel.text = groomsMen[indexPath.row].name
//        } else {
//            detailController.detailImageView.image = bridesMaids[indexPath.row].image
//            detailController.nameLabel.text = bridesMaids[indexPath.row].name
//        }
//
//        //      showDetailViewController(detailController, sender: tableView)
//        present(detailController, animated: true)
        
    }
    
    
}


