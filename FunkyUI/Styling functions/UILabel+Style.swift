//
//  UILabel+Style.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

public func textColor(_ color: UIColor) -> (UILabel) -> Void {
    return { $0.textColor = color }
}

public func highlightedTextColor(_ color: UIColor) -> (UILabel) -> Void {
    return { $0.highlightedTextColor = color }
}

public func font(_ font: UIFont) -> (UILabel) -> Void {
    return { $0.font = font }
}

public func textAlignment(_ textAlignment: NSTextAlignment) -> (UILabel) -> Void {
    return { $0.textAlignment = textAlignment }
}

public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> (UILabel) -> Void {
    return { $0.lineBreakMode = lineBreakMode }
}

public func numberOfLines(_ lines: Int) -> (UILabel) -> Void {
    return { $0.numberOfLines = lines }
}
