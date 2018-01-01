//
//  ViewController.swift
//  DelegateWithXibDemo
//
//  Created by MinhNL on 1/1/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    var delegate: SendMyNameProtocol!
    var mySubView: SubView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySubView = Bundle.main.loadNibNamed("SubView", owner: self, options: nil)?.first as! SubView
        delegate = mySubView
        mySubView.frame = self.subView.frame
        self.subView.addSubview(mySubView)
    }

    @IBAction func sendClick(_ sender: Any) {
        self.delegate.sendMyName(name: "MinhNL")
    }
    
}

protocol SendMyNameProtocol {
    
    func sendMyName(name: String)
}
