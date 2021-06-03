//
//  BatTatDenViewController.swift
//  Lesson1
//
//  Created by Chu Du on 02/06/2021.
//

import UIKit

class BatTatDenViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myButton: UIButton!
    
    var isState:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.black
        
        myImage.image = UIImage(named: "BulbOff")
        
        myButton.setTitle("Bật đèn", for: .normal)
        myButton.backgroundColor = UIColor.gray
        myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        myButton.layer.cornerRadius = 10
    }
    
    @IBAction func onPress(_ sender: Any) {
        if isState {
            myImage.image = UIImage(named: "BulbOff")
            myButton.setTitle("Bật đèn", for: .normal)
        } else {
            myImage.image = UIImage(named: "BulbOn")
            myButton.setTitle("Tắt đèn", for: .normal)
        }
        isState.toggle()
    }
    
}
