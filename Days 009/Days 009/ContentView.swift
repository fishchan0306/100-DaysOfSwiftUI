//
//  ContentView.swift
//  Days 009
//
//  Created by Fish Chan on 10/12/2025.
//

import OSLog
import SwiftUI

struct ContentView: View {

  private let logger = Logger()

  let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tesha"]

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("Closures, passing functions into functions").font(.title2)
          }
          Section {
            Text("Closures")
            let data: (Int) -> String = getUserData
            let user = data(1989)
            Button("Get User") {
              logger.log("\(user)")
            }
            let firstTeam = team.sorted(by: captainFirstSorted)
            Button("First Team") {
              logger.log("\(firstTeam)")
            }
          }
          Section {
            // Mark :
            // There are two way to design closures.
            // Full closures using '(by:)' & 'in' in the closures, also need to provide parameter name for use.
            // Shorthand closures no need provide parameter name & no need to use '(by:)' & 'in'.
            Text("Trailing Closures & Shorthand Syntax")
            let captainFirstTeam = team.sorted(by: {
              (name1: String, name2: String) -> Bool in
              if name1 == "Suzanne" {
                return true
              } else if name2 == "Suzanne" {
                return false
              }
              return name1 < name2
            })
            Button("Full Closures") {
              logger.log("Original array : \(team)")
              logger.log("Sorted array by full closures : \(captainFirstTeam)")
            }
            let captainFirstTeamShorthand = team.sorted {
              if $0 == "Tiffany" {
                return true
              } else if $1 == "Tiffany" {
                return false
              }
              return $0 < $1
            }
            Button("Shorthand Closures") {
              logger.log(
                "Sorted array by shorthand closures : \(captainFirstTeamShorthand)"
              )
            }
          }
        }.navigationTitle(Text("Day 9"))
      }
    }
  }

  func getUserData(for id: Int) -> String {
    if id == 1989 {
      return "Taylor Swift"
    } else {
      return "Anonymous"
    }
  }

  func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
      return true
    } else if name2 == "Suzanne" {
      return false
    }
    return name1 < name2
  }

}

#Preview {
  ContentView()
}
