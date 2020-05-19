//
//  URL + Extension.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.key, value: $0.value)}
        return components?.url
    }
}
