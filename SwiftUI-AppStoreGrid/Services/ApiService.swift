//
//  ApiService.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import Foundation

protocol ApiService {
    func getApps(completionBlock: @escaping (Feed) -> Void)
}

final class ApiServiceImpl: ApiService {
    func getApps(completionBlock: @escaping (Feed) -> Void) {
        guard let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/ios-apps/top-free/all/25/explicit.json") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print("Error fetching data: \(error!.localizedDescription)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                let feed = try JSONDecoder().decode(ApiResponse.self, from: data).feed
                completionBlock(feed)
            } catch {
                print("Error decoding fetched data: \(error.localizedDescription)")
            }
        }
        .resume()
    }
}
