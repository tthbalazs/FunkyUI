//
//  UILabel+DefaultStyle.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

import UIKit
import FunkyUI

extension UILabel {
    public struct Funky {
        public static func h1(styleKit: ApplicationStyle = DefaultStyle.shared) -> UILabel {
            let label = UILabel(frame: .zero)
            
            label
                |> autolayout
                <> fontStyle(styleKit.fonts.h1)
                <> textColorStyle(styleKit.colors.dark)
            
            return label
        }
        
        public static func h2(styleKit: ApplicationStyle = DefaultStyle.shared) -> UILabel {
            let label = UILabel(frame: .zero)
            
            label
                |> autolayout
                <> fontStyle(styleKit.fonts.h2)
                <> textColorStyle(styleKit.colors.dark)
            
            return label
        }
        
        public static func h3(styleKit: ApplicationStyle = DefaultStyle.shared) -> UILabel {
            let label = UILabel(frame: .zero)
            
            label
                |> autolayout
                <> fontStyle(styleKit.fonts.h3)
                <> textColorStyle(styleKit.colors.dark)
            
            return label
        }
        
        public static func body(styleKit: ApplicationStyle = DefaultStyle.shared) -> UILabel {
            let label = UILabel(frame: .zero)
            
            label
                |> autolayout
                <> fontStyle(styleKit.fonts.body1)
                <> textColorStyle(styleKit.colors.dark)
            
            return label
        }
        
        public static func caption(styleKit: ApplicationStyle = DefaultStyle.shared) -> UILabel {
            let label = UILabel(frame: .zero)
            
            label
                |> autolayout
                <> fontStyle(styleKit.fonts.caption)
                <> textColorStyle(styleKit.colors.info)
            
            return label
        }
    }
}
