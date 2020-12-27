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
import ReSwift




struct MapView: UIViewRepresentable, View {
    //TODO: move lat, long out of the view. These should belong in the controller.
    var latitude = (42.349634 + 42.33666532) / 2
    var longitude = (-71.099688  - 71.08749965) / 2


    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Self.Context) -> GMSMapView {
        GMSServices.provideAPIKey("AIzaSyDw2Q08LcAEE5qHKUQLLi4P-RAx0RSq5nc")
    
        //Add vertex's to Path like as shown bellow
        //get vertices from map
       // https://developers.google.com/maps/documentation/ios-sdk/shapes
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude: 42.345, longitude: -71.08))
        path.add(CLLocationCoordinate2D(latitude: 42.32, longitude: -71.9))
        path.add(CLLocationCoordinate2D(latitude: 42.29, longitude: -71.11))
        path.add(CLLocationCoordinate2D(latitude: 42.32, longitude: -71.9))
        path.add(CLLocationCoordinate2D(latitude: 42.345, longitude: -71.08))
        
        let polyline = GMSPolyline(path: path)
        polyline.strokeColor = .lightGray
        polyline.strokeWidth = 200.0
     
        
        mainStore.dispatch(CounterActionIncrease())
        print(mainStore.state.counter)
        mainStore.dispatch(CounterActionIncrease())
        print(mainStore.state.counter)
        mainStore.dispatch(CounterActionIncrease())
        print(mainStore.state.counter)
        mainStore.dispatch(CounterActionDecrease())
        print(mainStore.state.counter)
        mainStore.dispatch(CounterActionDecrease())
        print(mainStore.state.counter)
        mainStore.dispatch(CounterActionDecrease())
        print(mainStore.state.counter)
        
        
        
        //These should be in Main or AppDelegate
        var manager = CLLocationManager ()
        let gameController = GameController()
        gameController.viewDidLoad()
        manager = gameController.locationManager
    
        let camera = GMSCameraPosition.camera(withLatitude: latitude , longitude: longitude , zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero,  camera: camera)

        polyline.map = mapView
        return mapView
    }
    
    
    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        let player =  Player()
        player.createPlayer(a: 42.349634, b: -71.099688).map = mapView
        
        let player2 =  Player()
        player2.createPlayer(a: 42.33666532, b: -71.08749965).map = mapView
        drawBoard()
        }
    func drawBoard () {
    }


}


