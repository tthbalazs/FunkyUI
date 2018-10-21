//
//  Grid.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

extension CGFloat {
    public static func grid(n: Int, styleKit: ApplicationStyle = DefaultStyle()) -> CGFloat {
        return CGFloat(n) * styleKit.gridSize
    }
    
    public static func grid(n: CGFloat, styleKit: ApplicationStyle = DefaultStyle()) -> CGFloat {
        return n * styleKit.gridSize
    }
}
