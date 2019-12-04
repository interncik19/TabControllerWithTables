//
//  DetailViewController.swift
//  TabControllerWithTables
//
//  Created by Trinidad Garcia on 23/10/18.
//  Copyright © 2018 Trinidad Garcia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var getDetail = String()
    var getPrice = String()
    var getImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPrecio.text! = getDetail
        lblModelo.text! = getPrice
        imgView.image = getImage
    }
    
    


}
