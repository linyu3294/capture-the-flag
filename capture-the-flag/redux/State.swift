//
//  State.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/22/20.
//
import ReSwift

enum ViewType {
    case MAP
    case CONSOLE
}

struct AppState: StateType {
    var counter: Int = 0
    var viewType: String? = "Map View"
}
