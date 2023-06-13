//
//  ViewController.swift
//  FirstApp
//
//  Created by Globus Dev on 07.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lessonLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var someNewLabel: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someNewLabel.text = "777"
    }

    @IBAction func userTappedButton(_ sender: UIButton) {
        counter += 1
        
        lessonLabel.text = (lessonLabel.text ?? "") + ", \(counter)"
    }

}



class ForExampleViewController: UIViewController {
    
}
