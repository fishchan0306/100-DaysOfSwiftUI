//
//  ContentView.swift
//  Days 008
//
//  Created by Fish Chan on 9/12/2025.
//

import OSLog
import SwiftUI

struct ContentView: View {
  
  var password: String = "12345"
  
  enum PasswordError: Error {
    case short, obvious
  }

  // Mark : added the logger to show message in console.
  private let logger = Logger()

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("Default values, throwing functions").font(.title3)
          }
          Section {
            // Mark :
            // Change to use button action to call function & show the message in consloe.
            // The function setting default value 3 for 'end' parameter
            // Default Button just passing 'for', 'end' will use the default valuse '3'.
            // Specify Button passing 'for' & 'end' parameters.
            Text("Default values Function").font(.title2)
            Button("Default") {
              printTimesTables(for: 1)
            }
            Button("Specify") {
              printTimesTables(for: 1, end: 5)
            }
          }
          Section {
            Text("Errors handle in Functions").font(.title2)
            Button("Check Password") {
              do {
                let result = try checkPassword(password)
                logger.log("Password strength: \(result)")
              } catch PasswordError.short {
                logger.log("Please use a longer password.")
              } catch PasswordError.obvious {
                logger.log("I have the same combination on my luggage!")
              } catch {
                logger.log("Error checking password: \(error)")
              }
            }
          }
        }.navigationTitle(Text("Day 8"))
      }
    }
  }

  func printTimesTables(for number: Int, end: Int = 3) {
    for i in 1...end {
      logger.log("\(i) * \(number) = \(i * number)")
    }
  }
  
  func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
      throw PasswordError.short
    }
    
    if password == "12345" {
      throw PasswordError.obvious
    }
    
    if password.count < 8 {
      return "OK"
    } else if password.count < 10 {
      return "Good"
    } else {
      return "Excellent"
    }
  }
  
}

#Preview {
  ContentView()
}
