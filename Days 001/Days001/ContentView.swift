//
//  ContentView.swift
//  Days001
//
//  Created by Fish Chan on 19/11/2025.
//

import SwiftUI

struct ContentView: View {
  
  @State private var stringVar = "Hello"
  @State private var intVar = 10
  
  let stringConstant = "Constant String"
  let intConstant = 21
  
    var body: some View {
      VStack {
        NavigationStack {
          Form {
            Section {
              Text("Variables, constants, string and number")
            }
          }.navigationTitle(Text("Days 1"))
        }
      }
      
      
      VStack {
        Text("String: \(stringVar)")
        Text("String Constant: \(stringConstant)")
        Text("Int: \(intVar)")
        Text("Int Constant: \(intConstant)")
      }.padding(.bottom, 400)
    }
}

#Preview {
    ContentView()
}
