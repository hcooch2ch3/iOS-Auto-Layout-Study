//
//  ViewController.swift
//  CHCRActivity
//
//  Created by 임성민 on 2021/01/27.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var nameLabels: [UILabel]!
    @IBOutlet var addressLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let row = indexPath.row
        let addressLabel = addressLabels[row]
        let nameLabel = nameLabels[row]
        addressLabel.isHidden.toggle()
        if addressLabel.isHidden {
            nameLabel.setContentCompressionResistancePriority(UILayoutPriority(751), for: NSLayoutConstraint.Axis.horizontal)
        } else {
            nameLabel.setContentCompressionResistancePriority(UILayoutPriority(749), for: NSLayoutConstraint.Axis.horizontal)
        }
    }

}

