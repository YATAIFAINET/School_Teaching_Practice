//
//  xib.swift
//  Demo
//
//  Created by fainet on 2021/9/4.
//

import Foundation
import UIKit

class xib: CustomerViewController {

    var Send:String = "" {
        didSet {
            print(Send+"Demo2");
        }
    }
}

extension xib {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension xib {
    @IBAction func Send (_ sender :UIButton) -> Void {
        print("send")
        let vc:xibdemo = xibdemo.init()
        vc.Data = Send
        self.present(vc, animated: true, completion: nil)
    }
}
