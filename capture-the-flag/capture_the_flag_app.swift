//
//  capture_the_flagApp.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/5/20.


import Foundation
import SwiftUI
import ReSwift


let mainStore = Store(
    reducer: Reducer,
    state: AppState(),
    middleware: [])

//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        return true
//    }
//
//}

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
