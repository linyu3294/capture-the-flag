//
//  PlayerService.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/26/20.
//

import Foundation




func getPlayerLocation(
//    completionHandler: @escaping ([Player]) -> Void
) {
    let url = URL(string: "http://169.254.62.198:8080/api/player")!

    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
      if let error = error {
        print("Error with fetching films: \(error)")
        return
      }
      
      guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
        print("Error with the response, unexpected status code: \(response)")
        return
      }

//      if let data = data,
//        let FilmSummary = try? JSONDecoder().decode(FilmSummary.self, from: data) {
//        completionHandler(filmSummary.results ?? [])
//      }
    })
    task.resume()
  }



func setPlayerLocation () -> () {
    let url = NSURL(string: "https://yourUrl.com") //Remember to put ATS exception if the URL is not https
    let request = NSMutableURLRequest(url: url! as URL)
    request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type") //Optional
    request.httpMethod = "PUT"
    let session = URLSession(configuration:URLSessionConfiguration.default, delegate: nil, delegateQueue: nil)
    let data = "username=self@gmail.com&password=password".data(using: String.Encoding.utf8)
    request.httpBody = data

    let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in

        if error != nil {
            //handle error
        }
        else {

            let jsonStr = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("Parsed JSON: '\(jsonStr)'")
        }
    }
    dataTask.resume()
}
