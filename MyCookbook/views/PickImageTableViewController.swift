//
//  PickImageTableViewController.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 21/03/24.
//

import UIKit


protocol PickImageTableViewControllerDelegate: AnyObject {
    func imagePicker(_ picker: PickImageTableViewController,didPick imageName: String)
}

class PickImageTableViewController: UITableViewController {

    weak var delegate: PickImageTableViewControllerDelegate?
    var images = ["breakfast","drinks","Lunch"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
         let imageName = images[indexPath.row]
        cell.textLabel?.text = imageName
        cell.imageView?.image = UIImage(named: imageName)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.imagePicker(self, didPick: images[indexPath.row])
    }

}
