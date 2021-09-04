//
//  Demo2.swift
//  Demo
//
//  Created by fainet on 2021/9/2.
//

import Foundation
import UIKit

class Demo2: CustomerViewController {

}


//MARK:生命週期
extension Demo2 {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        self.title = "第二頁"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}

extension Demo2 {
    @IBAction func Send (_ sender :UIButton) -> Void {
        let vc:UIViewController = xib.init()

        self.present(vc, animated: true, completion: nil)
    }
}
