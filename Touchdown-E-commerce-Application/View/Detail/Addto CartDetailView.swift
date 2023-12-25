//
//  Addto CartDetailView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 19/12/23.
//

import SwiftUI

struct Addto_CartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    Addto_CartDetailView()
        .environmentObject(Shop())
}
