//
//  SearchTableViewCell.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 15/03/24.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productNametxt: UILabel!
    @IBOutlet weak var kclaLB: UILabel!
    @IBOutlet weak var minuteLB: UILabel!
    
    @IBOutlet weak var heartbutton: UIButton!
    
    
    var heartIsEmpty = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //    @IBAction func heartTapped(_ sender: UIButton) {
    
    //        }
    //        print("hello heart")
    //    }
    
    
    @IBAction func heartTapped(_ sender: UIButton) {
        print( " jjeee" )
        
        if  heartIsEmpty {
            heartIsEmpty = false
            heartbutton.setImage(UIImage(named: "heart"), for: .normal)
        }else{
            heartIsEmpty = true
            heartbutton.setImage(UIImage(named: "heart.fill"), for: .normal)
        }
    }
    
}
    

