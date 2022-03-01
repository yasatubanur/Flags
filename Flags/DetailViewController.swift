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
        
        self.title = "Detail Flag"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share your friend", style: .plain, target: self, action: #selector(suggest))
    }
    @objc func suggest(){
        let sharelink = "https://github.com/yasatubanur"
        let vc = UIActivityViewController(activityItems: [sharelink], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc,animated: true)
    }
}
