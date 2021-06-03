//
//  ViewController.swift
//  Lesson1
//
//  Created by Chu Du on 24/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: UIImage
        // hiển thị hình ảnh
        photoImageView.image = UIImage(named: "Chocolate")
        
        // đặt màu nền cho đối tượng
        photoImageView.backgroundColor = UIColor.orange
        
        // chế độ hiển thị hình ảnh
        photoImageView.contentMode = .scaleAspectFill
        
        // MARK: UILabel
        // hiển thị văn bản
        nameLabel.text = "Chocolate Cake"
        nameLabel.backgroundColor = UIColor.cyan
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.textColor = UIColor.brown
        
        // MARK: UIButton
        myButton.backgroundColor = UIColor.brown
        myButton.setTitle("Click me", for: .normal)
        myButton.setTitleColor(.cyan, for: .normal)
        myButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }

    @IBAction func onPress(_ sender: Any) {
        print("My Button")
    }
    
    
    
}

