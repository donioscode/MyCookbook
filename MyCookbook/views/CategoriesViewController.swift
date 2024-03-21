//
//  CategoriesViewController.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 15/03/24.
//
import UIKit

//,"Pastas","Salads","Desserts","Soups"
let name = ["Breakfast","Lunch","Drinks"]
let image = ["breakfast","drinks","Lunch"]


class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as? CategoryTableViewCell
        cell?.namelb.text = name[indexPath.row]
        cell?.productImageView.image = UIImage(named: "breakfast")

        return cell ?? UITableViewCell()
    }
    

    @IBOutlet weak var tableView: UITableView!
    var listCategorys = [CategoryList]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        
        let categorylistsNib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        tableView.register(categorylistsNib, forCellReuseIdentifier: "CategoryTableViewCell")
    }
}

        

