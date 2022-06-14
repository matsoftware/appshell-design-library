// ASDButtonSnapshotTests.swift
// Created under MIT license on 14/06/2022.

import ASDesignLibrary
import SnapshotTesting
import SwiftUI
import XCTest

final class ASDButtonSnapshotTests: SnapshotTestsCase {
    func testDefaultTheme() throws {
        let button = UIHostingController(rootView: ASDButton(title: "The quick brown fox jumps over the lazy dog", action: {}))

        assertSnapshot(matching: button, as: .image(on: .iPhoneSe))
        assertSnapshot(matching: button, as: .image(on: .iPhoneXr(.landscape)))
    }
}
