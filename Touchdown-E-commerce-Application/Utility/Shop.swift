//
//  Shop.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 19/12/23.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
