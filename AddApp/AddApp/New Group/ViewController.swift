//
//  ViewController.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func startButtonTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let profileViewController = storyboard.instantiateViewController(withIdentifier: ProfileViewController.id)
        show(profileViewController, sender: nil)
    }

}

