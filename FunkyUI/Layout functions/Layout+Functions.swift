//
//  Layout+Functions.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

public func clearConstraints(_ view: UIView) -> Void {
    view.removeConstraints(view.constraints)
}

public func autolayout(_ view: UIView) -> Void {
    view.translatesAutoresizingMaskIntoConstraints = false
}

// MARK: - Sizing functions

public func sizeTo(width: CGFloat?, height: CGFloat?) -> (UIView) -> Void {
    return {
        if let width = width {
            $0.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            $0.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

// MARK: Pinning functions

public func pinLeading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.leadingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}

public func pinTrailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat) -> (UIView) -> Void {
    return { $0.trailingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true }
}
