//
//  xibmodel.swift
//  Demo
//
//  Created by fainet on 2021/10/2.
//

import Foundation

struct xibProduct {
    var title:String?
    var itemtitle:String?
    var date:String?
    var price:String?

    init (title:String , itemtitle:String , date:String,price:String) {
        self.title = title
        self.itemtitle = itemtitle
        self.date = date
        self.price = price
    }

}
