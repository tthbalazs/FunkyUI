//
//  Layout+Sizing.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 28..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

import Foundation

public func sizeStyle(width: CGFloat?, height: CGFloat?) -> (UIView) -> Void {
    return {
        if let width = width {
            $0.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            $0.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

public func aspectRatioStyle(ratio: CGFloat) -> (UIView) -> Void {
    return {
        $0.widthAnchor.constraint(equalTo: $0.heightAnchor, multiplier: ratio).isActive = true
    }
}

public func widthToHeightRatio(_ ratio: CGFloat) -> (UIView) -> Void {
    return {
        $0.widthAnchor.constraint(equalTo: $0.heightAnchor, multiplier: ratio).isActive = true
    }
}

public func heightToWidthRatio(_ ratio: CGFloat) -> (UIView) -> Void {
    return {
        $0.heightAnchor.constraint(equalTo: $0.widthAnchor, multiplier: ratio).isActive = true
    }
}
