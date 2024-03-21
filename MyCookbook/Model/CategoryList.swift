//
//  CategoryList.swift
//  MyCookbook
//
//  Created by doniyor normuxammedov on 12/03/24.
//

import Foundation


class CategoryList: NSObject,Codable {
   // var name = ["Breakfast","Lunch","Drinks","Pastas","Salads","Desserts","Soups"]
    var name = ""
    var image = ""
    
    init(name: String,image: String) {
        self.name = name
        self.image = image
    }
    
}

class categorylist: NSObject,Codable {
    var name = ""
    var imageName = "breakfast"
    var items: [CategoryList] = []
    
    
    init(name: String = "", imageName: String = "breakfast") {
        self.name = name
        self.imageName = imageName
        super.init()
    }
}

