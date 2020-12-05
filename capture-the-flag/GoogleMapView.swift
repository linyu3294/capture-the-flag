//
//  GoogleMapsView.swift
//  world-tracking
//
//  Created by Yu Lin on 11/29/20.
//


import SwiftUI
import UIKit
import GoogleMaps
import GooglePlaces

struct GoogleMapView: UIViewRepresentable {


    
    let marker : GMSMarker = GMSMarker()

    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Self.Context) -> GMSMapView {
        GMSServices.provideAPIKey("AIzaSyDw2Q08LcAEE5qHKUQLLi4P-RAx0RSq5nc")
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)

        return mapView
 
    }

    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        
        // Creates a marker in the center of the map.
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }


}


