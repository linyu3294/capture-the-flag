//
//  Player.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/11/20.
//

import Foundation
import UIKit
import GoogleMaps

struct Player {
    func createPlayer (a:CLLocationDegrees,
                       b:CLLocationDegrees) -> GMSMarker {
        let marker2 : GMSMarker = GMSMarker()
        // Creates a marker in the center of the map.
        marker2.position = CLLocationCoordinate2D(latitude :a, longitude :b)
        marker2.title = "NEU"
        marker2.snippet = "Boston"
        return marker2
    }
}
