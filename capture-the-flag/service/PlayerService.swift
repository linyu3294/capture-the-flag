//
//  PlayerService.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/26/20.
//

import Foundation

import Apollo

// This is A SINGLETON.
class Network {
  static let shared = Network()
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://" + localhost + ":8080/query")!)
}


func getPlayerLocation () -> () {
    let net = Network()
    let mutation = CreateChannelMutation()
    print(mutation.queryDocument)
    print(net)

    // The Network's apollo is a shared singleton.
    Network.shared.apollo.perform(mutation: CreateChannelMutation()){ result in
        guard let data = try? result.get().data else {return}
      print(data)
    }
}
