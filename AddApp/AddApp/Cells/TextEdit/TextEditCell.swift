//
//  TextEditCell.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import Foundation
import UIKit

class TextEditCell: UITableViewCell {
    
    @IBOutlet weak var textField: UITextField!
    
    var viewModel: TextEditViewModel? {
        didSet {
            update()
        }
    }
    
    func update() {
        textField.text = viewModel?.text
        
        textField.delegate = self
    }
    
}

extension TextEditCell: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let newText = textField.text {
            viewModel?.textChanged(newText: newText)
        }
    }
    
}
