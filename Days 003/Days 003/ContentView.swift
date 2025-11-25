//
//  ContentView.swift
//  Days 003
//
//  Created by Fish Chan on 22/11/2025.
//

import SwiftUI

struct ContentView: View {

  let nameArray = ["Fish", "Chan"]
  let rolesDictionary = ["captain": "Mal", "engineer": "Katlee"]
  var nameSet: Set<String> = ["Fish", "Chan"]
  enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
  }

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("Arrays, dictionaries, sets and emuns")
          }
          Section {
            Text("Array[0] : \(nameArray[0])")
            Text("Array[1] : \(nameArray[1])")
          }
          Section {
            Text("Dict[captain] : \(rolesDictionary["captain"] ?? "N/A")")
            Text("Dict[engineer] : \(rolesDictionary["engineer"] ?? "N/A")")
          }
          Section {
            Text("setData : \(nameSet)")
          }
          Section {
            Text("Enum Monday : \(Weekday.monday)")
            Text("Enum Tuesday : \(Weekday.tuesday)")
          }
        }.navigationTitle(Text("Days 3"))
      }

    }
  }
}

#Preview {
  ContentView()
}
