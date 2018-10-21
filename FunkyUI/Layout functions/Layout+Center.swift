//
//  Layout+Center.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

// MARK: General centering methods

public func centerIn(_ view: UIView) -> (UIView) -> Void {
    return centerIn(view, offset: CGPoint.zero)
}

public func centerIn(_ view: UIView, offset: CGPoint) -> (UIView) -> Void {
    return centerTo(centerXAnchor: view.centerXAnchor,
                    centerYAnchor: view.centerYAnchor,
                    centerXOffset: offset.x,
                    centerYOffset: offset.y)
}

public func centerTo(centerXAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>,
                     centerYAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> (UIView) -> Void {
    return centerTo(centerXAnchor: centerXAnchor,
                    centerYAnchor: centerYAnchor,
                    centerXOffset: 0,
                    centerYOffset: 0)
}

public func centerTo(centerXAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>,
                     centerYAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>,
                     centerXOffset: CGFloat,
                     centerYOffset: CGFloat) -> (UIView) -> Void {
    return {
        $0.centerXAnchor.constraint(equalTo: centerXAnchor, constant: centerXOffset).isActive = true
        $0.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerYOffset).isActive = true
    }
}

// MARK: Horizontal centering

public func centerHorizontallyIn(_ view: UIView) -> (UIView) -> Void {
    return centerHorizontallyIn(view, offset: 0)
}

public func centerHorizontallyIn(_ view: UIView, offset: CGFloat) -> (UIView) -> Void {
    return centerHorizontallyTo(view.centerXAnchor, offset: offset)
}

public func centerHorizontallyTo(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat) -> (UIView) -> Void {
    return { $0.centerXAnchor.constraint(equalTo: anchor, constant: offset) }
}

// MARK: Vertical centering

public func centerVerticallyIn(_ view: UIView) -> (UIView) -> Void {
    return centerHorizontallyIn(view, offset: 0)
}

public func centerVerticallyIn(_ view: UIView, offset: CGFloat) -> (UIView) -> Void {
    return centerVerticallyTo(view.centerYAnchor, offset: offset)
}

public func centerVerticallyTo(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat) -> (UIView) -> Void {
    return { $0.centerYAnchor.constraint(equalTo: anchor, constant: offset) }
}
