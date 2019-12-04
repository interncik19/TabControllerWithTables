//
//  Tab2ViewController.swift
//  TabControllerWithTables
//
//  Created by Trinidad Garcia on 23/10/18.
//  Copyright © 2018 Trinidad Garcia. All rights reserved.
//

import UIKit

class Tab2ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var modelo = ["Caballeros", "Damas"]
    var precios = ["100.00", "120.00"]
    var imageCat = [UIImage(named: "caballero")!, UIImage(named: "dama")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.imgView.image = imageCat[indexPath.row]
        cell.lblCategoria.text = modelo[indexPath.row]
        cell.lblPrecio.text = precios[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DcV = Storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        DcV.getImage = imageCat[indexPath.row]
        DcV.getDetail = modelo[indexPath.row]
        DcV.getPrice = precios[indexPath.row]
        
        self.navigationController?.pushViewController(DcV, animated: true)
    }
    
}





