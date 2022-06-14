// ThemableView.swift
// Created under MIT license on 27/05/2022.

import Foundation
import SwiftUI

public typealias ThemableView = View

public protocol Themable {
    var theme: Theme { get }
}
