//
//  AudioInterview.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/25/23.
//

import Foundation
import SwiftUI

struct AudioInterview: Hashable, Codable, Identifiable {
    var id: Int // so that each article is identifiable, don't really need it for anything else (just a JSON thing)
    var heading: String
    var collection: String
    var author: String
    var description: String
    var audioName: String
    
    private var imageName: String // reads name of image from the data
    var image: Image { // loads image from Assets
        Image(imageName)
    }
}
