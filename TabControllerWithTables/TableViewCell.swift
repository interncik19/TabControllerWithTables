//
//  TableViewCell.swift
//  TabControllerWithTables
//
//  Created by Trinidad Garcia on 23/10/18.
//  Copyright © 2018 Trinidad Garcia. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblCategoria: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
