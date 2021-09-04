//
//  ViewController.swift
//  Demo
//
//  Created by 李季陽 on 2021/1/29.
//

import UIKit

class Demo: CustomerViewController {
    
    @IBOutlet weak var name_Label: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var address: UILabel!

}

//MARK:生命週期
extension Demo {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        self.InitValue()

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

//MARK:Init
extension Demo {
    private func InitValue () ->Void {
            self.SetData()
    }
}

extension Demo {
    @IBAction func SendNav (_ sender :UIButton) -> Void {
    
        let mainStoryboard = UIStoryboard(name: "demo2", bundle: Bundle.main)
        guard let vc = mainStoryboard.instantiateViewController(withIdentifier: "Demo2") as? Demo2 else {
            print("err")
            return
        }
        //self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil);

    }
}
//MARK:Api

extension Demo {

}


