//
//  URLModel.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import SwiftUI

struct URLImage: View {
    
    @ObservedObject private var imageLoader = ImageLoader()
    init(url: String) {  self.imageLoader.load(url: url)}
    
    var body: some View {
        Image(uiImage: self.imageLoader.loadedImage ?? UIImage(systemName: "photo")!)
            .resizable()
    }
}

#if DEBUG
struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://apod.nasa.gov/apod/image/2005/SolarSystemPosters_NASA_1080.jpg")
            .aspectRatio(contentMode: .fit)
    }
}
#endif
