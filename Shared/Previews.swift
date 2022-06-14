// Previews.swift
// Created under MIT license on 25/05/2022.

import ASDesignLibrary
import SwiftUI

#if DEBUG
    struct Previews: PreviewProvider {
        static var previews: some View {
            ASDButton(title: "Title") {
                print("Button pressed")
            }
        }
    }
#endif
