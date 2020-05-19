//
//  Array + Extension.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import Foundation

extension Array {
    func separated(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size)
            .map { Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
