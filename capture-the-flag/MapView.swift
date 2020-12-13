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

struct MapView: UIViewRepresentable, View {
//
    var latitude = (42.349634 + 42.33666532) / 2
    var longitude = (-71.099688  - 71.08749965) / 2
    
    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Self.Context) -> GMSMapView {
//        let locationManager = CLLocationManager()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//        locationManager.startUpdatingLocation()
//        let latitude = (locationManager.location?.coordinate.latitude)!
//        let longitude = (locationManager.location?.coordinate.longitude)!
        var manager = CLLocationManager ()
        let gameController = GameController()
        gameController.viewDidLoad()
        manager = gameController.locationManager
        
        
//        print ("latitude    ", latitude)
//        print ("longitude   ", longitude)
        GMSServices.provideAPIKey("AIzaSyDw2Q08LcAEE5qHKUQLLi4P-RAx0RSq5nc")
        let camera = GMSCameraPosition.camera(withLatitude: latitude , longitude: longitude , zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero,  camera: camera)

        return mapView
    }

    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        let player =  Player()
        player.createPlayer(a: 42.349634, b: -71.099688).map = mapView
        
        let player2 =  Player()
        player2.createPlayer(a: 42.33666532, b: -71.08749965).map = mapView
    }
    


}


