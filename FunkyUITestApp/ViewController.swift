//
//  ViewController.swift
//  FunkyUITestApp
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

import UIKit
import FunkyUI

class ViewController: UIViewController {
    let label: UILabel = UILabel(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(label)
        
        label.text = "Hello world"
        
        autolayout(label)
        centerIn(view)(label)
        hardShadow(label)
    }
}
