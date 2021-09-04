//
//  demo3.swift
//  Demo
//
//  Created by fainet on 2021/9/4.
//

import Foundation
import UIKit

class Demo3:CustomerViewController {

    var aa = 1 {
        didSet {
            print(aa)
        }
    }
}

extension Demo3 {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(aa)
    }
}
