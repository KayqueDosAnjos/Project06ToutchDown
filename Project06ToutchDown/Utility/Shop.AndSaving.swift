//
//  ShopAndSaving.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import Foundation
import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
