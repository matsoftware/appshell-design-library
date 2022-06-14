// GalleryView.swift
// Created under MIT license on 27/05/2022.

import ASDesignLibrary
import SwiftUI

struct GalleryView: View {
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            List {
                NavigationLink("ASDButton") {
                    ASDButton(title: "Button example", action: {
                        showAlert = true
                    })
                }
            }.navigationTitle("ASDesignLibrary gallery")
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Test"), message: Text("Action performed"))
        }
    }
}

#if DEBUG
    struct GalleryView_Previews: PreviewProvider {
        static var previews: some View {
            GalleryView()
        }
    }
#endif
