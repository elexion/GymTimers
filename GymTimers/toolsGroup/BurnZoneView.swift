//
//  BurnZoneView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 22/07/2023.
//

import SwiftUI

struct BurnZoneView: View {
    @StateObject var settingsModel = SettingsModel()
    
    var body: some View {
        VStack {
            Text("Your Maximum heart rate should be: \(settingsModel.calculateBurnZone()) beats per minute")
        }
        .environmentObject(SettingsModel())
    }
}

struct BurnZoneView_Previews: PreviewProvider {
    static var previews: some View {
        BurnZoneView()
    }
}
