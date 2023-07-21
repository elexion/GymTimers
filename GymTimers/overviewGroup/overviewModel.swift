//
//  overviewModel.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 20/07/2023.
//

import Foundation
import Combine

final class OverviewModel: ObservableObject {
    @Published var activeSession: Bool = false
    @Published var totalWorkoutTimer = 0

    //@Published var totalTimer = DateComponents.date(from: dateComponents())
    
    func startWorkout() {
        activeSession.toggle()
        if(activeSession) {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                if self.activeSession {
                    self.totalWorkoutTimer += 1
                }
            }
        }
    }
}
