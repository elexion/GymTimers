//
//  ScheduleView.swift
//  GymTimers
//
//  Created by Jeffrey Klinkhamer on 22/07/2023.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        let scheduleModel = ScheduleModel()
        
        Text(scheduleModel.hasNextWorkout ? "next workout will be: " : "No next workout scheduled!")
        //MultiDatePicker("Foo", selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([])/*@END_MENU_TOKEN@*/)
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
