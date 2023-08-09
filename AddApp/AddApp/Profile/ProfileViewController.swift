//
//  ProfileViewController.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var notificationsStatus: UILabel!
    
    var presenter: ProfilePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
