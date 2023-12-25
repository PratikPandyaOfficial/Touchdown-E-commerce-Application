//
//  HeaderDetailView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            
            Text("Productive Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
