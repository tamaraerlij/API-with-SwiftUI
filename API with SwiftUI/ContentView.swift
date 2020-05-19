//
//  ContentView.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("NASA PIC OF DAY")
                .font(.largeTitle)
                .bold()
                .shadow(color: .secondary, radius: 3)
            SeparatedImages()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
