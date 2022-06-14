// ColorPalette.swift
// Created under MIT license on 27/05/2022.

import Foundation
import SwiftUI

public protocol ColorPalette {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }

    var primaryTextColor: Color { get }
}
