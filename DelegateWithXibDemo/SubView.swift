//
//  SubView.swift
//  DelegateWithXibDemo
//
//  Created by MinhNL on 1/1/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class SubView: UIView {

    @IBOutlet weak var lblName: UILabel!
    
    var myName: String! {
        didSet {
            lblName.text = myName
        }
    }

}

extension SubView: SendMyNameProtocol {
    
    func sendMyName(name: String) {
        self.myName = name
    }
    
}
