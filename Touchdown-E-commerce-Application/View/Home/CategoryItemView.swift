//
//  CategoryItemView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Properties
    let category : Category
    
    var body: some View {
        Button(action: {
            print("Button")
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
                
            }//: Hstack
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .background{
                RoundedRectangle(cornerRadius: 12.0)
                    .stroke(Color.gray, lineWidth: 1)
            }
            //.background(Color.white)
        })//: Button
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
