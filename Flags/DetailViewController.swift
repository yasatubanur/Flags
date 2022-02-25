//
//  DetailView.swift
//  Flags
//
//  Created by Tuba Nur YAŞA on 24.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var countryName : String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(countryName)
        imageView.image = UIImage(named: countryName)
    }
}
