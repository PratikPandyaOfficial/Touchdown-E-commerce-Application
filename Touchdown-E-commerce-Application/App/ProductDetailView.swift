//
//  ProductDetailView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            // Detail top bar
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // Detail Bottom part
            VStack(alignment: .center, spacing: 0) {
                // Rating + size
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // Description
                ScrollView(.vertical) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }//: Scroll
                // Quantity + favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // Add to cart
                Addto_CartDetailView()
                    .padding(.bottom, 20)
            }//:VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -100)
            )
        }//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background {
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        }
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
