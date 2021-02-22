//
//  SwiftUI_AppStoreGridApp.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import SwiftUI

@main
struct SwiftUI_AppStoreGridApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                AppStoreGridView(viewModel: AppStoreGridViewModel(apiService: ApiServiceImpl()))
            }
        }
    }
}
