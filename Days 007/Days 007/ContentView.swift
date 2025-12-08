//
//  ContentView.swift
//  Days 007
//
//  Created by Fish Chan on 5/12/2025.
//

import SwiftUI

struct ContentView: View {

  let string = "HELLO"

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("Functions, Parameters, and Return Values").font(.title2)
          }
          Section {
            Text("Upper Case Function").font(.title3)
            Text("\(string) is Upper Case : \(isUppercase(string))")
          }
          Section {
            Text("Print Times Table Function").font(.title3)
            ForEach(1...2, id: \.self) { index in
              printTimesTable(for: index)
            }
          }
          Section {
            Text("Return Multiple Values Function")
            let (firstName, lastName) = getUser()
            Text("Name : \(firstName) \(lastName)")
            // Mark : if no need all values from the tuple, using _ to ignore that part of tuple.
            let (firstname, _) = getUser()
            Text("First Name : \(firstname)")
            let (_, lastname) = getUser()
            Text("Last Name : \(lastname)")
          }
        }.navigationTitle(Text("Day 7"))
      }
    }
  }

  // Mark :
  // if add _ before the parameter name, can remove extrnal parameter label.
  func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
  }

  // Mark :
  // function can returns a 'String', use the return type that 'String'.
  // if directly returns a 'Text' view, function return type should be 'some View'.
  // if return different 'Text' view or other 'View' types based on conditions, use '@ViewBuilder'.
  @ViewBuilder
  func printTimesTable(for number: Int) -> some View {
    Text("This is \(number)'s times table")
  }

  func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Fish", lastName: "Chan")
  }

}

#Preview {
  ContentView()
}
