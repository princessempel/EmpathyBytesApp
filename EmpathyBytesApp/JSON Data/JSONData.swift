//
//  JSONData.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import Foundation

var collections: [Collection] = load("collectionData.json")
var members: [TeamMember] = load("teamMemberData.json")

// fetchs JSON data
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't load \(filename) from main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\(error)")
    }
}
