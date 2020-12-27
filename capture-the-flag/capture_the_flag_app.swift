//
//  capture_the_flagApp.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/5/20.


import Foundation
import SwiftUI
import ReSwift

let localhost = "localhost"

let mainStore = Store(
    reducer: Reducer,
    state: AppState(),
    middleware: [])

@main
struct capture_the_flag_app: App {
    var body: some Scene {
        WindowGroup {
            NavigateView()
        }
    }
}


struct capture_the_flag_app_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
