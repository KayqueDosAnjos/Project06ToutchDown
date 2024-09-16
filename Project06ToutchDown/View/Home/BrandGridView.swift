//
//  BrandGridView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: LOOP
            })//: GRID
            .frame(height: 200)
            .padding(15)
        })//: SCROLL
    }
}

#Preview {
    BrandGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
