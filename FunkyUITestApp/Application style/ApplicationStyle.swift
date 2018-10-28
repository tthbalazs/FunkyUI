//
//  ApplicationStyle.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

import UIKit

public protocol ApplicationStyle {
    var fonts: FontStyle    { get }
    var colors: ColorStyle  { get }
    var gridSize: CGFloat   { get }
}
