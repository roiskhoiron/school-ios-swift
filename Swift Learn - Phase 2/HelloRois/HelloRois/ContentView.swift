//
//  ContentView.swift
//  HelloRois
//
//  Created by Rois Hoiron on 23/09/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var name = "Rois"

    var body: some View {
        VStack {
            Text("Hallo \(name)")
                .font(.largeTitle)
            Button("Ganti Nama") {
                name = "Khoiron Rois"
            }
        }
        .padding()
    }    
}

#Preview {
    ContentView()
}
