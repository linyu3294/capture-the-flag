//
//  NavigationView.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/25/20.
//

import Foundation
import SwiftUI

struct NavigateView: View {
    
    @State private var selection: String? = nil
    @State private var fullScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(
                    destination: MapView(),
                    tag: "Map View",
                    selection: $selection
                ) { EmptyView() }
                
                NavigationLink(
                    destination: ConsoleView(),
                    tag: "Console View",
                    selection: $selection
                ) { EmptyView() }
                
                
                Button("Map View") {
                    dispatchSwitchToMap()
                    self.selection = mainStore.state.viewType
                }
                .padding(30.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                )
 
                Button("Console View") {
                    dispatchSwitchToConsole()
                    self.selection = mainStore.state.viewType
                }
                    .padding(30.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                    )
                }.navigationBarTitle("Navigation")
               
        }
    }
    
    
    //Dispatchers
    func dispatchSwitchToMap () -> () {
        mainStore.dispatch(SwitchToMapAction())
        }
    func dispatchSwitchToConsole () -> () {
        mainStore.dispatch(SwitchToConsoleAction())
        }

    }

