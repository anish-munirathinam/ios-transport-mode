//
//  TMDataModel.swift
//  TransportMode
//
//  Created by Munirathinam, Anish | RIEPL on 02/06/23.
//

import Foundation
import CoreMotion

class TMDataModel : ObservableObject {

    var activityManager : CMMotionActivityManager?
    @Published var activities = [CMMotionActivity]()

    init() {
        if !CMMotionActivityManager.isActivityAvailable() {
            print("activity monitoring is not available")
            return
        }
        activityManager = CMMotionActivityManager()
        activityManager!.startActivityUpdates(to: OperationQueue.main) { (motion) in
            guard let newMotion = motion else { return }
            self.activities.append(newMotion)
        }
    }
}
