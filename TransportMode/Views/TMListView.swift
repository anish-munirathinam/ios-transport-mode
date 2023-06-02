//
//  TMListView.swift
//  TransportMode
//
//  Created by Munirathinam, Anish | RIEPL on 02/06/23.
//

import SwiftUI
import CoreMotion

struct TMListView: View {

    let motionActivityManager = CMMotionActivityManager()
    @EnvironmentObject var dataModel: TMDataModel

    var body: some View {
        NavigationView {
            List(dataModel.activities, id: \.startDate) { activity in
                TMRow(text: "\(activity)")
            }
            .navigationTitle("Transport Mode")
        }
    }
}

struct TMRow: View {
    let text: String

    var body: some View {
        Text(text)
    }
}
