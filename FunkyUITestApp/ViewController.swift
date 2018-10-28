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
    let cube = UIView(frame: .zero)
    let label = UILabel.Funky.h2()
    let subtitle = UILabel.Funky.caption()
    let content = UILabel.Funky.body()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Hello world"
        subtitle.text = "Reusable ui components based on functions"
        content.text = "Some other content"
        
        cube
            |> autolayout
            <> addTo(view)
            <> sizeStyle(width: 64, height: nil)
            <> heightToWidthRatio(1.5)
            <> backgroundColorStyle(.red)
            <> centerHorizontallyIn(view)
            <> pinTop(to: view.topAnchor, constant: 64)
        
        label
            |> addTo(view)
            <> centerIn(view)
        
        subtitle
            |> addTo(view)
            <> textColorStyle(.red)
            <> pinTop(to: label.bottomAnchor, constant: 8)
            <> pinLeading(to: view.leadingAnchor, constant: 16)
            <> pinTrailing(to: view.trailingAnchor, constant: -16)
        
        content
            |> addTo(view)
            <> pinTop(to: subtitle.bottomAnchor, constant: 16)
    }
}
