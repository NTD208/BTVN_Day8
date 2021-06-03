//
//  ViewController.swift
//  RandomImage
//
//  Created by Chu Du on 03/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomImage: UIImageView!
    @IBOutlet weak var randomButton: UIButton!
    let images:[String] = ["Vietnam", "Philippines", "Myanmar", "Indonesia", "Lao", "Campuchia", "Singapore", "Brunei", "Dongtimo", "Malaysia", "Thailan", "Anh", "Ao", "Balan", "Bhutan", "Bi", "BoDaoNha", "China", "DanMach", "Duc", "HaLan", "India", "Iraq", "Japan", "Jordan", "Korea", "Nga", "Phap", "Qatar", "TayBanNha", "ThoNhiKy", "Uzbekistan", "Y", "Yemen"]
    var index1:Int = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.8011595607, green: 1, blue: 0.9845090508, alpha: 1)
        
        randomButton.setTitle("Random", for: .normal)
        randomButton.backgroundColor = UIColor.darkGray
        randomButton.layer.cornerRadius = 10
        randomButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        randomButton.setTitleColor(.white, for: .normal)
        
        randomImage.image = UIImage(named: "emptyImage")
    }

    @IBAction func onPress(_ sender: Any) {
        var index2 = Int.random(in: 0..<images.count)

        if index2 == index1 {
            index2 += 1
            if index2 >= images.count {
                index2 = 0
            }
        }
        randomImage.image = UIImage(named: images[index2])
        randomImage.contentMode = .scaleAspectFit
        index1 = index2
    }
}

