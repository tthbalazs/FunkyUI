//
//  DefaultStyle.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

public struct DefaultStyle: ApplicationStyle {
    public let fonts: FontStyle
    public let colors: ColorStyle
    public let gridSize: CGFloat
    
    public init(fonts: FontStyle = Fonts(), colors: ColorStyle = Colors(), gridSize: CGFloat = 8.0) {
        self.fonts = fonts
        self.colors = colors
        self.gridSize = gridSize
    }
}
