//
//  UIView+Style.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

public func backgroundColorStyle(_ color: UIColor) -> (UIView) -> Void {
    return { $0.backgroundColor = color }
}

public func alphaStyle(_ alpha: CGFloat) -> (UIView) -> Void {
    return { $0.alpha = alpha }
}

public func clipsToBoundsStyle(_ clips: Bool) -> (UIView) -> Void {
    return { $0.clipsToBounds = clips }
}

// MARK: - UIView layer manipulation

public func borderStyle(color: UIColor, width: CGFloat) -> (UIView) -> Void {
    return {
        $0.layer.borderColor = color.cgColor
        $0.layer.borderWidth = width
    }
}

// MARK: Shadow

public func softShadow(_ view: UIView) -> Void {
    shadow(color: .black, offset: CGSize(width: 0, height: 3), radius: 6, opacity: 0.3)(view)
}

public func hardShadow(_ view: UIView) -> Void {
    shadow(color: .black, offset: CGSize(width: 0, height: 3), radius: 3, opacity: 0.6)(view)
}

public func shadow(color: UIColor, offset: CGSize, radius: CGFloat, opacity: Float) -> (UIView) -> Void {
    return {
        $0.layer.shadowColor = color.cgColor
        $0.layer.shadowOffset = offset
        $0.layer.shadowRadius = radius
        $0.layer.shadowOpacity = opacity
    }
}

// MARK: Corner radius

public func cornerRadiusStyle(_ radius: CGFloat) -> (UIView) -> Void {
    return { $0.layer.cornerRadius = radius }
}

// MARK: Layer masks

public func masksToBoundsStyle(_ masks: Bool) -> (UIView) -> Void {
    return { $0.layer.masksToBounds = masks }
}
