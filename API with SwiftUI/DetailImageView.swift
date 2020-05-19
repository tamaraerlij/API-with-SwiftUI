//
//  DetailImageView.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import SwiftUI

struct DetailImageView: View {
    var photo: Photo
    var body: some View {
        DetailImage(photo: photo)
    }
}

#if DEBUG
struct DetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailImageView(photo: Photo.all())
    }
}
#endif
