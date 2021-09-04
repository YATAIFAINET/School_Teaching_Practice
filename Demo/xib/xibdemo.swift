//
//  xibdemo.swift
//  Demo
//
//  Created by fainet on 2021/9/4.
//

import Foundation
import UIKit

class xibdemo: CustomerViewController {

    var Data:String = "demo" {
        didSet {
            print(Data+"Demo3");
        }
    }
}

extension xibdemo {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
