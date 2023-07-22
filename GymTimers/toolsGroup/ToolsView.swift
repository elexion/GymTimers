//
//  ToolsView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 22/07/2023.
//

import SwiftUI

struct ToolsView: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink("Heart") {
                    BurnZoneView()
                }
            }
        }
    }
}

struct ToolsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolsView()
    }
}
