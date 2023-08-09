//
//  TextEditViewModel.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import Foundation

protocol TextEditViewModelDelegate: AnyObject {
    func textWasChanged(viewModel: TextEditViewModel, text: String)
}

struct TextEditViewModel: ViewModel {
    
    var id: Any
    var text: String
    weak var delegate: TextEditViewModelDelegate?
    
    func textChanged(newText: String) {
        delegate?.textWasChanged(viewModel: self, text: newText)
    }
}
