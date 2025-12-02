//
//  ContentView.swift
//  Days 005
//
//  Created by Fish Chan on 1/12/2025.
//

import SwiftUI

struct ContentView: View {
  
  let temp = 25
  
  enum weather {
    case sun, rain, wind, snow, unknow
  }
  let forecast = weather.rain
  let switchForecast = weather.snow
  
  let age = 18

  var body: some View {
    VStack {
      NavigationStack {
        Form {
          Section {
            Text("If, Switch, and the ternary operator")
          }
          Section {
            Text("Multiple Conditions")
            if temp > 20 && temp < 30 {
              Text("\(temp) over 20 and under 30")
            }
          }
          Section {
            Text("If else If Conditions")
            if forecast == .sun {
              Text("Sun : ☀️")
            } else if forecast == .rain {
              Text("Rain : 🌧️")
            } else if forecast == .wind {
              Text("Wind : 🌬️")
            } else if forecast == .snow {
              Text("Snow : ❄️")
            } else {
              Text("Unknow : 🤔")
            }
          }
          Section {
            Text("Switch Condition")
            switch switchForecast {
            case .sun:
              Text("Sun : ☀️")
            case .rain:
              Text("Rain : 🌧️")
            case .wind:
              Text("Wind : 🌬️")
            case .snow:
              Text("Snow : ❄️")
            default:
              Text("Unknow : 🤔")
            }
          }
          Section {
            Text("Conditional operator")
            Text("Age over 18: \(age >= 18 ? "Yes" : "No")")
          }
        }.navigationTitle(Text("Days 5"))
      }
    }
  }
}

#Preview {
  ContentView()
}
