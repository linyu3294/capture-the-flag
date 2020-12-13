//
//  capture_the_flagApp.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/5/20.
//

import SwiftUI

@main
struct capture_the_flag_app: App {
    
    func game () {
        let a = GameController()
        a.viewDidLoad()
    }
    
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
