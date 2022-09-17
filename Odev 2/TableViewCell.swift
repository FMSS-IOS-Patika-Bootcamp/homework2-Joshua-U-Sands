//
//  TableViewCell.swift
//  Odev 2
//
//  Created by Joshua Sands on 17.09.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
