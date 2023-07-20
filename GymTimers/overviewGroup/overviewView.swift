//
//  overviewView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 20/07/2023.
//

import SwiftUI

struct overviewView: View {
    @ObservedObject var overviewModel = OverviewModel()
    
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
        }
    }
}

struct overviewView_Previews: PreviewProvider {
    static var previews: some View {
        overviewView()
    }
}
