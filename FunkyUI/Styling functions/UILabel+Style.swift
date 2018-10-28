//
//  UILabel+Style.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

public func textColorStyle(_ color: UIColor) -> (UILabel) -> Void {
    return { $0.textColor = color }
}

public func highlightedTextColorStyle(_ color: UIColor) -> (UILabel) -> Void {
    return { $0.highlightedTextColor = color }
}

public func fontStyle(_ font: UIFont) -> (UILabel) -> Void {
    return { $0.font = font }
}

public func textAlignmentStyle(_ textAlignment: NSTextAlignment) -> (UILabel) -> Void {
    return { $0.textAlignment = textAlignment }
}

public func lineBreakModeStyle(_ lineBreakMode: NSLineBreakMode) -> (UILabel) -> Void {
    return { $0.lineBreakMode = lineBreakMode }
}

public func numberOfLinesStyle(_ lines: Int) -> (UILabel) -> Void {
    return { $0.numberOfLines = lines }
}

public func tintColorStyle(_ color: UIColor) -> (UILabel) -> Void {
    return { $0.tintColor = color }
}
