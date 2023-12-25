//
//  SectionView.swift
//  Touchdown-E-commerce-Application
//
//  Created by Drashti on 18/12/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    @State var rotateClockwise: Bool
    var title: String
    // MARK: - Body
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text(title.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//:VStack
        .background(.gray)
        .cornerRadius(12)
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false, title: "categories")
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
