//
//  Fonts.swift
//  FunkyUI
//
//  Created by Tóth Balázs on 2018. 10. 21..
//  Copyright © 2018. tthbalazs. All rights reserved.
//

// MARK: - FontStyle

import UIKit

public protocol FontStyle {
    var h1: UIFont { get }
    var h2: UIFont { get }
    var h3: UIFont { get }
    var body1Medium: UIFont { get }
    var body2Medium: UIFont { get }
    var captionMedium: UIFont { get }
    var button: UIFont { get }
    var buttonSmall: UIFont { get }
    var tabbarItem: UIFont { get }
    var body1: UIFont { get }
    var body2: UIFont { get }
    var caption: UIFont { get }
}

// MARK: - Fonts

public struct Fonts: FontStyle {
    public init() {}
    
    private func defaultFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }

    private func defaultMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .medium)
    }
    
    /// Returns a factor representing the scale to resize some fonts for accessibility.
    private var fontScale: CGFloat {
        return max(UIFont.preferredFont(forTextStyle: .body).pointSize / 17.0, 1.0)
    }
    
    // MARK: - Fonts
    
    /// Medium font with a default size of 32
    public var h1: UIFont { return defaultMediumFont(ofSize: 32) }
    /// Medium font with a default size of 24
    public var h2: UIFont { return defaultMediumFont(ofSize: 24) }
    /// Medium font with a default size of 17 scaled with the default font scale
    public var h3: UIFont { return defaultMediumFont(ofSize: 17 * fontScale) }
    /// Medium font with a default size of 16 scaled with the default font scale
    public var body1Medium: UIFont { return defaultMediumFont(ofSize: 16 * fontScale) }
    /// Medium font with a default size of 14 scaled with the default font scale
    public var body2Medium: UIFont { return defaultMediumFont(ofSize: 14 * fontScale) }
    /// Medium font with a default size of 12 scaled with the default font scale
    public var captionMedium: UIFont { return defaultMediumFont(ofSize: 12 * fontScale) }
    /// Medium font with a default size of 16 scaled with the default font scale
    public var button: UIFont { return defaultMediumFont(ofSize: 16 * fontScale) }
    /// Medium font with a default size of 14 scaled with the default font scale
    public var buttonSmall: UIFont { return defaultMediumFont(ofSize: 14 * fontScale) }
    /// Medium font with a default size of 10 scaled with the default font scale
    public var tabbarItem: UIFont { return defaultMediumFont(ofSize: 10) }
    /// Regular font with a size of 16 scaled with the default font scale
    public var body1: UIFont { return defaultFont(ofSize: 16 * fontScale) }
    /// Regular font with a size of 14 scaled with the default font scale
    public var body2: UIFont { return defaultFont(ofSize: 14 * fontScale) }
    /// Regular font with a size of 12 scaled with the default font scale
    public var caption: UIFont { return defaultFont(ofSize: 12 * fontScale) }
}
