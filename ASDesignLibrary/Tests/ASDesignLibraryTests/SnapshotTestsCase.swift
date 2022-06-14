// SnapshotTestsCase.swift
// Created under MIT license on 14/06/2022.

import SnapshotTesting
import XCTest

class SnapshotTestsCase: XCTestCase {
    override func setUp() async throws {
        try await super.setUp()
        isRecording = false // Change to `true` to record new snapshots
    }
}
