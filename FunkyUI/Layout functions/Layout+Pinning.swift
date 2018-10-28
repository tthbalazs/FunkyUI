//
//  Layout+Pinning.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 28..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

import Foundation

public func pinLeading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.leadingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}

public func pinTrailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.trailingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}

public func pinBottom(to anchor: NSLayoutYAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.bottomAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}

public func pinTop(to anchor: NSLayoutYAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.topAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}
