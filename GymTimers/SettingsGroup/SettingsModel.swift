//
//  SettingsModel.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 22/07/2023.
//

import Foundation
import Combine

class SettingsModel: ObservableObject {
    @Published var userHeight: String = ""
    @Published var userWeight: String = ""
    @Published var userAge: String = ""
    // max workout time
    // minimal workout session
    // require cardio
    // require abdominal session
    
    func calculateBurnZone() -> Int {
        guard self.userAge != "" else { return 0 }
        var maximumHeartRate: Int = 220 - Int(self.userAge)!
        return maximumHeartRate
    }
    
}
