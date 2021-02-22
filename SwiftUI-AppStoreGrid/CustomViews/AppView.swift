//
//  AppView.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import SwiftUI
import Kingfisher

struct AppView: View {
    let app: AppStoreApp
    
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(app.imageURL)
                .placeholder {
                    Image(systemName: "appletv")
                }
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(app.name)
                    .foregroundColor(.white)
                
                Text(app.copyright)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
    }
}
