// ASDButton.swift
// Created under MIT license on 27/05/2022.

import SwiftUI

public typealias ButtonAction = () -> Void

public struct ASDButton: ThemableView {
    public var theme: Theme = currentTheme

    private let title: String
    private let action: ButtonAction

    public init(title: String, action: @escaping ButtonAction) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: self.action, label: {
            Text(self.title)
                .foregroundColor(theme.palette.primaryTextColor)
        })
        .padding()
        .background(theme.palette.primaryColor)
        .cornerRadius(theme.buttonRadius)
    }
}
