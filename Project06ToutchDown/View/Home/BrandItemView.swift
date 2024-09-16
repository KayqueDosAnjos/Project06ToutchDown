//
//  BrandItemView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - <Properties>
    
    let brand: Brand
    
    //MARK: - <Body>
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
