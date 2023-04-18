//
//  Collection.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import Foundation
import SwiftUI

struct Collection: Hashable, Codable, Identifiable {
    var id: Int // so that each article is identifiable, don't really need it for anything else (just a JSON thing)
    var name: String
    var description: String
    var timeline: String
    
    private var imageName: String // reads name of image from the data
    var image: Image { // loads image from Assets
        Image(imageName)
    }
}
