//
//  xib.swift
//  Demo
//
//  Created by fainet on 2021/9/4.
//

import Foundation
import UIKit

class xib: CustomerViewController {

    @IBOutlet var tablelist: UITableView!

    var Send:String = "" {
        didSet {
            print(Send+"Demo2");
        }
    }

    var model:[xibProduct] = [];
}

extension xib {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        initModel()
    }
}

extension xib {
    func initModel () {
        self.model.append(xibProduct.init(title: "Alex", itemtitle: "產品1", date: "日期1", price: "100"))
        self.model.append(xibProduct.init(title: "Alex2", itemtitle: "產品2", date: "日期2", price: "200"))
        self.model.append(xibProduct.init(title: "Alex3", itemtitle: "產品3", date: "日期3", price: "300"))
        self.model.append(xibProduct.init(title: "Alex4", itemtitle: "產品4", date: "日期4", price: "400"))
        self.model.append(xibProduct.init(title: "Alex5", itemtitle: "產品5", date: "日期5", price: "500"))
    }
}

extension xib {
    func initView () ->Void {
        setupTableView()
    }

    func setupTableView() {
        self.tablelist.register(UINib(nibName: "\(xibcell.self)", bundle: nil), forCellReuseIdentifier: "\(xibcell.self)")
    }
}

extension xib : UITableViewDataSource,UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "\(xibcell.self)", for: indexPath) as! xibcell

        cell.titleString = self.model[indexPath.row].title ?? ""
        cell.itemTitleString = self.model[indexPath.row].itemtitle ?? ""
        cell.itemDateString = self.model[indexPath.row].date ?? ""
        cell.itemPriceString = self.model[indexPath.row].price ?? ""

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
