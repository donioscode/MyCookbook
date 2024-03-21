//
//  ViewController.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 27/02/24.
//

import UIKit

class MainSearchViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var segmentLB: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    let productname = "Pizza"
    let calori = "300 kcla"
    let timeck = "45 minute"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let productListNib = UINib(nibName: "SearchTableViewCell", bundle: nil)
        tableView.register(productListNib, forCellReuseIdentifier: "SearchTableViewCell")
        
    }
}

extension MainSearchViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        cell.productImageView.image = UIImage(named: "breakfast")
        cell.productNametxt.text = productname
        cell.minuteLB.text = timeck
        cell.kclaLB.text = calori
        
        
        return cell
    }
}




