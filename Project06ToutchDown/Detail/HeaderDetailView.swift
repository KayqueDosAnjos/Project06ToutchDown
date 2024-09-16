//
//  HeaderDetailView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - <Property>
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - <Body>
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//: VSTACK
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}
