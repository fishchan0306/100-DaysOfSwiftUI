//
//  ContentView.swift
//  Days 006
//
//  Created by Fish Chan on 2/12/2025.
//

import SwiftUI

struct ContentView: View {

  let platforms: [String] = ["ios", "macOS", "watchOS", "tvOS"]
  let filenames: [String] = ["me.jpg", "work.txt", "hello.jpg", "test.psd"]

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("Loops, summary")
          }
          Section {
            Text("For Loop : forEach")
            ForEach(platforms.enumerated(), id: \.offset) {
              index,
              platform in
              Text("\(index) - \(platform)")
            }
          }
          Section {
            Text("ForEach with condition")
            ForEach(
              filenames.filter { $0.hasSuffix(".jpg") == false },
              id: \.self
            ) {
              file in Text("\(file)")
            }
          }
        }.navigationTitle(Text("Days 6"))
      }
    }
  }
}

#Preview {
  ContentView()
}
