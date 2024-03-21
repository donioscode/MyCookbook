//
//  AddCategoryTableViewController.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 21/03/24.
//

import UIKit

protocol AddCategoryTableViewControllerDelegate : AnyObject {
    func addCategoryTableViewController(_ controller: AddCategoryTableViewController,didFinishAdding checkList: categorylist)
    func addCategoryTableViewController(_ controller: AddCategoryTableViewController,didFinishEditing checkList: categorylist)
}

class AddCategoryTableViewController: UITableViewController {
    
    
    @IBOutlet weak var donebutton: UIBarButtonItem!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    weak var delegate : AddCategoryTableViewControllerDelegate?
    var imageName = ""
    var listtoEdit = categorylist?(categorylist())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.delegate = self
        donebutton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImages" {
            let vc = segue.destination as! PickImageTableViewController
            vc.delegate = self
        }
    }
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        
        if let listtoEdit = listtoEdit {
            
            listtoEdit.name = nameTF.text!
            listtoEdit.imageName = imageName
            delegate?.addCategoryTableViewController(self, didFinishEditing: listtoEdit)
        } else {
            
            let item = categorylist(name: nameTF.text!,imageName: imageName)
            delegate?.addCategoryTableViewController(self, didFinishAdding: item)
        }

        
    }
    
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.section == 1 ? indexPath: nil
    }
}



extension AddCategoryTableViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text!
        
        let stringRange = Range(range,in: oldText)!
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        
        if newText.isEmpty {
            donebutton.isEnabled = false
        }else{
            donebutton.isEnabled = true
        }
        
        return true
    }
    
}

extension AddCategoryTableViewController: PickImageTableViewControllerDelegate {
    func imagePicker(_ picker: PickImageTableViewController,didPick imageName: String) {
        self.imageName = imageName
        image.image = UIImage(named: imageName)
        navigationController?.popViewController(animated: true)
    }
}
