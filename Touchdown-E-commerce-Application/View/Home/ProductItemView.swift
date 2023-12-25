//
//  ProductItemView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTOS
            ZStack(content: {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            })// : ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }//: VStack
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
