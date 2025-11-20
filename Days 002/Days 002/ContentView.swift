//
//  ContentView.swift
//  Days 002
//
//  Created by Fish Chan on 20/11/2025.
//

import SwiftUI

struct ContentView: View {
  
  @State private var doubleVar = 10.1
  @State private var boolVar = true
  
  let doubleConstant = 21.2
  let boolConstant = false
  
    var body: some View {
      VStack {
        NavigationStack {
          Form {
            Section {
              Text("Booleans, string interpolation")
            }
            Section {
              Text("Double : \(doubleVar)")
              Text("Booleans : \(boolVar)")
              Text("Double Constant : \(doubleVar)")
              Text("Booleans Constant : \(boolConstant)")
            }
          }.navigationTitle(Text("Days 2"))
        }
      }
    }
}

#Preview {
    ContentView()
}
