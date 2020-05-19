//
//  PhotoLoader.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import Foundation
class NetService: ObservableObject {
    @Published var photos = [Photo]()
      
      let formater = DateFormatter()
      let calendar = Calendar.current
      let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!
      var query = ["api_key": "", "date": ""]
    
    func load() {
          guard baseURL.withQueries(query) != nil else { fatalError("URL isn't correct!")}
          
          formater.dateFormat = "yyyy-MM-dd"
          query["api_key"] =  "USUDCdP9Bbp8IBSZkyENWqgmAX74vQG0sACMm8B5"
          
        (0..<10).forEach { day in
              query["date"] = formater
                  .string(from: calendar
                      .date(from: DateComponents(calendar: calendar,
                                                year: calendar.dateComponents([.year], from: Date()).year,
                                                 month: calendar.dateComponents([.month], from: Date()).month,
                                                 day: calendar.dateComponents([.day], from: Date()).day! - day))!)
              print(day, baseURL.withQueries(query)!)
              
      URLSession.shared.dataTask(with: baseURL.withQueries(query)!) { data,_,_ in
                    guard let data = data, var photoInfo = try? JSONDecoder().decode(Photo.self, from: data) else { fatalError("Can't decode data!")}
                    photoInfo.id = UUID.init()
                    DispatchQueue.main.async {
                        self.photos.append(photoInfo)
                    }
                }.resume()
            }
        }
    }
