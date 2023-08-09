//
//  EditViewController.swift
//  AddApp
//
//  Created by Globus Dev on 05.08.2023.
//

import Foundation
import UIKit

class EditViewController: UIViewController {
    
    var presenter: EditPresenter?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension EditViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.viewModels.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = presenter?.viewModels[indexPath.row]
        
        if let viewModel = viewModel as? TextEditViewModel {
            return createTextEditCell(tableView: tableView, viewModel: viewModel)
        }
        
        return UITableViewCell()
    }
    
    private func createTextEditCell(tableView: UITableView, viewModel: TextEditViewModel) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "textEdit") as? TextEditCell {
            cell.viewModel = viewModel
            return cell
        }
        
        return UITableViewCell()
    }
}
