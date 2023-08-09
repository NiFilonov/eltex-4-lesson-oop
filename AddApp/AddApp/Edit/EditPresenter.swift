//
//  EditPresenter.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import Foundation

class EditPresenter {
    
    enum ItemId {
        case name, address, notifications
    }
    
    weak var view: EditViewController?
    
    var viewModels: [ViewModel] {
        var items: [ViewModel] = []
        
        items.append(TextEditViewModel(id: ItemId.name,
                                       text: profileInfo?.name ?? "",
                                       delegate: self))
        
        
        return items
    }
    
    private var profileInfo: ProfileInfo?
    
    init(profileInfo: ProfileInfo) {
        self.profileInfo = profileInfo
    }
    
}

extension EditPresenter: TextEditViewModelDelegate {
    
    func textWasChanged(viewModel: TextEditViewModel, text: String) {
        if let id = viewModel.id as? ItemId {
            switch id {
            case .name:
                profileInfo?.name = text
            case .address:
                profileInfo?.address = text
            default:
                break
            }
        }
    }
    
}
