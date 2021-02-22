//
//  SearchBar.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 23/02/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @State private var isSearching = false
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .padding([.leading, .top, .bottom])
                    .foregroundColor(.gray)
                
                
                ZStack {
                    TextField("Search App", text: $searchText)
                        .foregroundColor(.black)
                        .padding()
                        .onChange(of: searchText, perform: { searchText in
                            isSearching = !searchText.isEmpty
                        })
                    
                    if isSearching {
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                searchText = ""
                                isSearching = false
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding([.trailing, .top, .bottom])
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            
            if isSearching {
                Button(
                    action: {
                        searchText = ""
                        isSearching = false
                        hideKeyboard()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                )
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
            .background(Color.mainBackground)
    }
}
