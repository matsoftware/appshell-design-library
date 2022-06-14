// DefaultTheme.swift
// Created under MIT license on 27/05/2022.

import Foundation
import SwiftUI
#if os(iOS)
    import UIKit
#endif

public struct DefaultColorPalette: ColorPalette {
    #if os(iOS)
        public var primaryColor: Color = .init(UIColor.systemBlue)

        public var secondaryColor: Color = .init(UIColor.systemGray)

        public var primaryTextColor: Color = .init(UIColor.systemGray6)
    #else
        public var primaryColor: Color = .blue

        public var secondaryColor: Color = .gray

        public var primaryTextColor: Color = .black
    #endif
}

public struct DefaultTheme: Theme {
    public var palette: ColorPalette = DefaultColorPalette()

    public var defaultMargin: CGFloat = 10

    public var buttonRadius: CGFloat = 10
}
