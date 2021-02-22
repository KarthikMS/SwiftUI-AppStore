//
//  ContentView.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import SwiftUI

struct AppStoreGridView: View {
    @ObservedObject var viewModel: AppStoreGridViewModel
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color.mainBackground.ignoresSafeArea()
            
            switch viewModel.state {
            case .idle:
                FetchAppsButton(action: viewModel.fetchApps)
                
            case .fetchingApps:
                AppFetchingProgressView()
                
            case let .appsFetched(apps, title):
                VStack {
                    SearchBar(searchText: $searchText)
                        .padding()
                    
                    AppCollectionView(apps: apps)
                        .padding()
                        .navigationBarTitle(title)
                }
                
            case .appsFetchFailure:
                Text("appsFetchFailure")
            }
        }
        .onChange(of: searchText, perform: { searchText in
            viewModel.filterApps(searchText: searchText)
        })
    }
}

private struct FetchAppsButton: View {
    let action: () -> Void
    
    var body: some View {
        Button("Fetch apps", action: action)
            .padding()
            .background(Color.white)
            .foregroundColor(.mainBackground)
            .font(.title2)
            .cornerRadius(10)
            .navigationTitle("Grid View Practice")
    }
}

private struct AppFetchingProgressView: View {
    var body: some View {
        ProgressView("Fetching Apps")
            .foregroundColor(.white)
            .font(.title)
            .navigationTitle("Grid View Practice")
    }
}

struct AppCollectionView: View {
    var apps: [AppStoreApp]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 100), alignment: .top)],
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: 10) {
                ForEach(apps, id: \.self) { app in
                    AppView(app: app)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = AppStoreGridViewModel(apiService: MockApiService())
        viewModel.state = .appsFetched(
            apps: [
                AppStoreApp(
                    name: "Youtube",
                    copyright: "This is some copyright",
                    imageURL: URL(string: "")!
                )
            ],
            title: "Apps"
        )
        
        return NavigationView {
            AppStoreGridView(viewModel: viewModel)
        }
        .colorScheme(.dark)
    }
}
