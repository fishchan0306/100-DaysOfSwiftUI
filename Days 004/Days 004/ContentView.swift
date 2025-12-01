//
//  ContentView.swift
//  Days 004
//
//  Created by Fish Chan on 26/11/2025.
//

import SwiftUI

struct ContentView: View {
  
  let surname: String = "Chan"
  let givenName: String = "Fish"
  var score: Int = 100
  var doubleScore: Double = 0.0
  var isBool: Bool = true
  
    var body: some View {
        VStack {
          NavigationStack {
            Form {
              Section {
                Text("Type annotations")
              }
              Section {
                Text("Type String : \(surname)")
                Text("Type String : \(givenName)")
                Text("Type Int : \(score)")
                Text("Type Double : \(doubleScore)")
                Text("Type Bool : \(isBool)")
              }
            }.navigationTitle(Text("Days 4"))
          }
        }
    }
}

#Preview {
    ContentView()
}
