//
//  Model.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import Foundation

struct ApiResponse: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let appStoreApps: [AppStoreApp]
    
    enum CodingKeys: String, CodingKey {
        case title
        case appStoreApps = "results"
    }
}

struct AppStoreApp: Decodable, Hashable {
    let name: String
    let copyright: String
    let imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case name
        case copyright
        case imageURL = "artworkUrl100"
    }
    
    init(name: String, copyright: String, imageURL: URL) {
        self.name = name
        self.copyright = copyright
        self.imageURL = imageURL
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        copyright = try container.decode(String.self, forKey: .copyright)
        let imageURLString = try container.decode(String.self, forKey: .imageURL)
        imageURL = URL(string: imageURLString)!
    }
}
