//
//  RatingSizesDetailView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 19/12/23.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - Properties
    
    let sizes:[String] = ["XS", "S", "M", "L", "XL"]
    @State private var sizeColor: Color = colorGray
    @State private var selectedSize: String = ""
    @State private var selectedStar: Int = 0
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment:.leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            selectedStar = item
                        }, label: {
                            if selectedStar >= item{
                                Image(systemName: "star.fill")
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .foregroundStyle(.yellow)
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 2)
                                    )
                            }
                            else{
                                Image(systemName: "star.fill")
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(colorGray)
                                    .cornerRadius(5)
                                    .foregroundStyle(.white)
                            }
                        })
                    }
                })
            })
            Spacer()
            
            //Sizes
            
            VStack(alignment:.trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self){ size in
                        Button(action: {
                            sizeColor = .red
                            selectedSize = size
                        }, label: {
                            if selectedSize == size{
                                Text(selectedSize)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(sizeColor)
                                    .frame(width:28, height: 28, alignment: .center)
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(sizeColor, lineWidth: 2)
                                    )
                            }
                            else{
                                Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(colorGray)
                                    .frame(width:28, height: 28, alignment: .center)
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 2)
                                    )
                            }
                        })
                    }
                }
                
            })
            
        })
    }
}

#Preview {
    RatingSizesDetailView()
}
