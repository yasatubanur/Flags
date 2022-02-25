//
//  ViewController.swift
//  Flags
//
//  Created by Tuba Nur YAŞA on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var title = "Flags"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share your friend", style: .plain, target: self, action: #selector(suggest))
        
        countries += ["estonia","france","germany","irland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
            }
        }
    }
    @objc func suggest(){
        let sharelink = "https://github.com/yasatubanur"
        let vc = UIActivityViewController(activityItems: [sharelink], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc,animated: true)
    }
    
}

