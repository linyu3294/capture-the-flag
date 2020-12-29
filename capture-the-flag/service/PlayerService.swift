//
//  PlayerService.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/26/20.
//

import Foundation

import Apollo


class Network {
  static let shared = Network()
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://" + localhost + ":8080/query")!)
}


func getPlayerLocation () -> () {
    let net = Network()
    let mutation = CreateChannelMutation()
    print(mutation.queryDocument)
    print(net)

    // The Network's apollo is a shared singleton. It can be used anywhere.
    Network.shared.apollo.perform(mutation: CreateChannelMutation()){ result in
        guard let data = try? result.get().data else {return}
      print(data)
    }
}

//    let url = URL(string: "http://" + localhost + ":8080/query")!
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST"
//
//
//    // HTTP Request Parameters which will be sent in HTTP Request Body
//    let postString =
//    """
//
//       mutation
//        createChannel {
//           createChannel(
//           input:
//               {channel:
//               {name: "Channel 1",
//                 platform:
//                 {name: "Platform for channel 1"}
//               }
//             })
//               {
//                 id
//                 name
//                 platform {
//                   name
//                 }
//               }
//       }
//    """
//    // Set HTTP Request Body
//    request.httpBody = postString.data(using: String.Encoding.utf8);
//
//    NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {(response, data, error) in
//        guard let data = data else { return }
//        print(String(data: data, encoding: .utf8)!)
    


