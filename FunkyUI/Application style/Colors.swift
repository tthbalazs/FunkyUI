//
//  Colors.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

// MARK: - ColorStyle protocol

public protocol ColorStyle {
    var primary: UIColor { get }
    var secondary: UIColor { get }
    var success: UIColor { get }
    var danger: UIColor { get }
    var warning: UIColor { get }
    var info: UIColor { get }
    var light: UIColor { get }
    var dark: UIColor { get }
    var white: UIColor { get }
}

// MARK: Colors

public struct Colors: ColorStyle {
    public init() {}
    
    public var primary:    UIColor { return #colorLiteral(red: 0, green: 0.4835101962, blue: 0.9990398288, alpha: 1) }
    public var secondary:  UIColor { return #colorLiteral(red: 0.422377944, green: 0.4583802819, blue: 0.4917360544, alpha: 1) }
    public var success:    UIColor { return #colorLiteral(red: 0.1565668285, green: 0.6565688252, blue: 0.2710740268, alpha: 1) }
    public var danger:     UIColor { return #colorLiteral(red: 0.8642396331, green: 0.2060347497, blue: 0.2716235518, alpha: 1) }
    public var warning:    UIColor { return #colorLiteral(red: 0.9980931878, green: 0.7577217221, blue: 0.03260162845, alpha: 1) }
    public var info:       UIColor { return #colorLiteral(red: 0.08712588996, green: 0.634773612, blue: 0.7234241366, alpha: 1) }
    public var light:      UIColor { return #colorLiteral(red: 0.9723265767, green: 0.9764742255, blue: 0.980482161, alpha: 1) }
    public var dark:       UIColor { return #colorLiteral(red: 0.2031395435, green: 0.2270932794, blue: 0.2520937324, alpha: 1) }
    public var white:      UIColor { return #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998809695, alpha: 1) }
}
