//
//  ConsoleView.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/25/20.
//

import Foundation
import SwiftUI

struct ConsoleView: View {
    var body: some View {
        VStack {
            Button("Press Me To Test") {
                getPlayerLocation()
            }
               .padding(30.0)
               .overlay(
                   RoundedRectangle(cornerRadius: 10.0)
                           .stroke(lineWidth: 2.0)
               )
            }.navigationBarTitle("Navigation")
        }
    }

