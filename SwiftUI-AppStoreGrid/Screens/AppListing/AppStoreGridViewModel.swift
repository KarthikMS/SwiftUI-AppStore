//
//  AppStoreGridViewModel.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import Foundation
import Combine

enum AppStoreGridViewState {
    case idle
    case fetchingApps
    case appsFetched(apps: [AppStoreApp], title: String)
    case appsFetchFailure(errorMessage: String)
}

final class AppStoreGridViewModel: ObservableObject {
    // MARK: - Dependencies
    let apiService: ApiService
 
    // MARK: - Published Properties
    @Published var state: AppStoreGridViewState = .idle
    
    // MARK: - Properties
    private var feed: Feed?

    // MARK: - Init
    init(apiService: ApiService) {
        self.apiService = apiService
    }
    
    func fetchApps() {
        state = .fetchingApps
        apiService.getApps { feed in
            DispatchQueue.main.async {
                self.feed = feed
                self.state = .appsFetched(apps: feed.appStoreApps, title: feed.title)
            }
        }
    }
    
    func filterApps(searchText: String) {
        guard let feed = feed else { return }
        
        let filteredApps = feed.appStoreApps.filter {
            searchText.isEmpty || $0.name.lowercased().contains(searchText.lowercased())
        }
        state = .appsFetched(apps: filteredApps, title: feed.title)
    }
}
