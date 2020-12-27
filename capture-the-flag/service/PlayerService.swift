//
//  PlayerService.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/26/20.
//

import Foundation



func getPlayerLocation () -> () {
    let url = URL(string: "http://169.254.179.148:8080/api/player")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    
    NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {(response, data, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
    }

}


