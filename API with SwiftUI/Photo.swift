//
//  Photo.swift
//  API with SwiftUI
//
//  Created by Tamara Erlij on 19/05/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import Foundation

struct Photo: Codable, Hashable, Identifiable {
    var id: UUID?
    var copyright: String?
    var date, title, explanation, url: String
    
}
extension Photo {
    static func all() -> Photo {
        Photo(id: .init(),
              copyright: nil,
              date: "2020-05-19",
              title: "Posters of the Solar System",
              explanation: "Would you like a NASA astronomy-exploration poster?  You are just one page-print away. Any of the panels you see on the featured image can appear on your wall.  Moreover, this NASA page has, typically, several more posters of each of the Solar System objects depicted.  These posters highlight many of the places humanity, through NASA, has explored in the past 50 years, including our Sun, and planets Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. Moons of Jupiter that have been posterized include Europe, Ganymede, Callisto, and Io, while moons of Saturn that can be framed include Enceladus and Titan.  Images of Pluto, Ceres, comets and asteroids are also presented, while six deep space scenes -- well beyond our Solar System -- can also be prominently displayed.  If you lack wall space or blank poster sheets don't despair -- you can still print many of these out as trading cards.",
              url: "https://apod.nasa.gov/apod/image/2005/SolarSystemPosters_NASA_1080.jpg")
    }
}
