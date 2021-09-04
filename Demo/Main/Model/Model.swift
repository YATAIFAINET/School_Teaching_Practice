//
//  Model.swift
//  Demo
//
//  Created by fainet on 2021/1/29.
//

import Foundation

struct Model {
    var Data_Array:[String] = []
    var Data_Array_Null:[String]?
    var Data_Array_Count:[String] = Array(repeating: String(), count: 10)

    init() {

    }

    mutating func initData() ->Void {
        Data_Array.removeAll()

        if(Data_Array_Null != nil) {
            Data_Array_Null?.removeAll()
            Data_Array_Null?.append("我是加入")
        } else {
            Data_Array_Null = ["我是空值","HiHi"]
        }

        Data_Array_Count.append(contentsOf: Data_Array_Null ?? [])
    }
}


enum IntDefine:Int {
    case defaultsize = -1
    case One
    case Two
    case Three
}

enum StringDefine:String {
    case Name = "Alex"
    case Wife = "Ting"
    case Phone = "0987654321"
}

struct Public_All_Struct {
    var name:String
    let wife_name:String?

    var phone:String

    let Define:StringDefine = .Name
    init() {
        name = StringDefine.Name.rawValue
        wife_name = StringDefine.Wife.rawValue
        phone = StringDefine.Phone.rawValue

        switch Define {
        case .Phone:
            break
        case .Wife:
            break
        default:
            break
        }
    }
}

extension ViewController {


}
