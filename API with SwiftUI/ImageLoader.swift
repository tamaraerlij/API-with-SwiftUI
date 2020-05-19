//
//  ImageLoader.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import Foundation
import UIKit

final class ImageLoader: ObservableObject {
    
   @Published var loadedImage: UIImage? = nil
    
    func load(url: String) {
        guard let imageURL = URL(string: url) else { fatalError("URL isn't correct!")}
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            guard let data = data, error == nil else { fatalError(error!.localizedDescription)}
            
            DispatchQueue.main.async {
                self.loadedImage = UIImage(data: data)
            }
        }.resume()
    }
}
