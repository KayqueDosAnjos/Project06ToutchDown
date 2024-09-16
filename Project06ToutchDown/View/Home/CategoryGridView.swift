//
//  CategoryGridView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
              
            })//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: SCROLL
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
