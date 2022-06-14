// Theme.swift
// Created under MIT license on 27/05/2022.

import SwiftUI

public var currentTheme: Theme = DefaultTheme()

public protocol Theme {
    var palette: ColorPalette { get }

    var defaultMargin: CGFloat { get }

    var buttonRadius: CGFloat { get }
}
