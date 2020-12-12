//
//  capture_the_flagApp.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/5/20.
//

import SwiftUI

@main
struct capture_the_flagApp: App {
    var body: some Scene {
        WindowGroup {
            GoogleMapView()
        }
    }
}


struct capture_the_flagApp_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapView()
    }
}
