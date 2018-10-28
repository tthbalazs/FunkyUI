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

public func addTo(_ view: UIView) -> (UIView) -> Void {
    return { view.addSubview($0) }
}
