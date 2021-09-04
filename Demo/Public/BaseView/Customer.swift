//
//  Customer.swift
//  Demo
//
//  Created by fainet on 2021/1/29.
//

import UIKit

class CustomerViewController: UIViewController {

    public var BaseModel:model = .init()
}


//MARK:按鈕動作事件
extension CustomerViewController {
    @IBAction func dissmiss (_sender:UIButton) {

    }
}

//MARK:BASE生命週期宣告
extension CustomerViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad_Custom")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
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

//MARK:函式庫
extension CustomerViewController {
    func GetData() -> Void  {
    }
}
