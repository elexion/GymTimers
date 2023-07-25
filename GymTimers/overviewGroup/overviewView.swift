//
//  overviewView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 20/07/2023.
//

import SwiftUI

struct overviewView: View {
    @ObservedObject var overviewModel = OverviewModel()
    
    // state variables
    @State private var selectedTab = 0
    
    var body: some View {
        
        VStack {
            Text("Workout tracker")
                .font(.headline)
            HStack {
                Text("current session: \(overviewModel.totalWorkoutTimer)")
                Button(overviewModel.activeSession ? "pause session" : "Start session") {
                    overviewModel.startWorkout()
                }
            }
            TabView(selection: $selectedTab) {
                HomeTabView()
                    .tabItem {
                        Text("Home")
                            .foregroundColor(.primary)
                            .font(.system(.title))
                            .padding(.horizontal, 8)
                            }
                        .tag(0)
                Text("another tab")
                    .tabItem {
                        Text("Page 1")
                            .foregroundColor(.primary)
                            .font(.system(.title))
                            .padding(.horizontal, 8)
                            }
                        .tag(1)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct overviewView_Previews: PreviewProvider {
    static var previews: some View {
        overviewView()
    }
}
