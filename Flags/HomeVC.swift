//
//  HomeVC.swift
//  Flags
//
//  Created by Tuba Nur YAŞA on 25.02.2022.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let countries =  ["estonia","france","germany","irland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.title = "Flags"
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for:indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        destination.countryName = countries[indexPath.row]
        navigationController?.pushViewController(destination, animated: true)
    }
}
