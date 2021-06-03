//
//  FlagViewController.swift
//  Lesson1
//
//  Created by Chu Du on 02/06/2021.
//

import UIKit

class FlagViewController: UIViewController {

    @IBOutlet weak var flagImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        flagImage.image = UIImage(named: "emptyImage")
    }
    
    @IBAction func onPress(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            flagImage.image = UIImage(named: "Vietnam")
        case 2:
            flagImage.image = UIImage(named: "Thailan")
        case 3:
            flagImage.image = UIImage(named: "Lao")
        case 4:
            flagImage.image = UIImage(named: "Campuchia")
        case 5:
            flagImage.image = UIImage(named: "Myanmar")
        case 6:
            flagImage.image = UIImage(named: "Philippines")
        case 7:
            flagImage.image = UIImage(named: "Singapore")
        case 8:
            flagImage.image = UIImage(named: "Malaysia")
        case 9:
            flagImage.image = UIImage(named: "Indonesia")
        case 10:
            flagImage.image = UIImage(named: "Dongtimo")
        case 11:
            flagImage.image = UIImage(named: "Brunei")
        default:
            flagImage.image = UIImage(named: "emptyImage")
        }
    }
    
    
}
