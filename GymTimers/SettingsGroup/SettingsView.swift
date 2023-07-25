//
//  SettingsView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 22/07/2023.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settingsModel: SettingsModel
    @State private var imperial: Bool = false
    @State private var age: String = "0"
    @State private var weight: String = ""
    @State private var height: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Toggle(isOn: $imperial) {
                    Label("Imperial: ", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding()
                }
                .padding()
            }
            HStack {
                Label("Age", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding()
                TextField("Your age", text: $age)
                    .onSubmit {
                        settingsModel.userAge = age
                    }
            }
            HStack {
                Label("Height", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding()
                TextField(imperial ? "Height in foot" : "Height in centimeters", text: $height)
                    .keyboardType(.decimalPad)
                    .onSubmit {
                        settingsModel.userHeight = height
                    }
            }
            HStack {
                Label("Weight:", systemImage: "lightning")
                    .labelStyle(.titleOnly)
                    .padding()
                TextField(imperial ? "weight in pounds" : "weight in kilos", text: $weight)
                    .keyboardType(.decimalPad)
                    .onSubmit {
                        settingsModel.userWeight = weight
                    }
            }
            .environmentObject(SettingsModel())
    }
}
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView().environmentObject(SettingsModel())
        }
    }
}
