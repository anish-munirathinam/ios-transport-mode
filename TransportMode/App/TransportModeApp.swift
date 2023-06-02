//
//  TransportModeApp.swift
//  TransportMode
//
//  Created by Munirathinam, Anish | RIEPL on 02/06/23.
//

import SwiftUI

@main
struct TransportModeApp: App {
    @StateObject var dataModel = TMDataModel()

    var body: some Scene {
        WindowGroup {
            TMListView()
                .environmentObject(dataModel)
        }
    }
}
