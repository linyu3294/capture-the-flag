//
//  capture_the_flagApp.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/5/20.


import Foundation
import SwiftUI
import ReSwift




@main
struct capture_the_flag_app: App {
    var body: some Scene {
        WindowGroup {
            MapView()
        }
    }
}

struct capture_the_flag_app_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
