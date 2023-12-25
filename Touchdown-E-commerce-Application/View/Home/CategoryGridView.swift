//
//  CategoryGridView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }) {
                    SectionView(rotateClockwise: false, title: "Categories")
                } footer: {
                    SectionView(rotateClockwise: true, title: "Categories")
                }

            })//: LazyHgrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: Scroll
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
