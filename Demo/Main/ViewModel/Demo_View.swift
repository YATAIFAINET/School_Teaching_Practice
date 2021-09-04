//
//  Demo_View.swift
//  Demo
//
//  Created by fainet on 2021/6/21.
//

//MARK: 擴充DemoView
extension Demo {
    func SetData() -> Void {
        self.name_Label.text = self.BaseModel.getName()
        self.phone.text =  self.BaseModel.getPhone()
        self.email.text =  self.BaseModel.getEmail()
        self.address.text =  self.BaseModel.getAddress()
    }
}
