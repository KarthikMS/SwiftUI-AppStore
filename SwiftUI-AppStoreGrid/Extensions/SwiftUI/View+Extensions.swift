//
//  View+Extensions.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 23/02/21.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
