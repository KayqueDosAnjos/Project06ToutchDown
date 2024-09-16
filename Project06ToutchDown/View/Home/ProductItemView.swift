//
//  ProductItemView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - <Properties>
    
    let product: Product
    
    //MARK: - <Body>
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })//: VSTACK
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
