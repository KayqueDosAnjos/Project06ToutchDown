//
//  TitleView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct TitleView: View {
    //MARK: - <Properties>
    var title: String
    
    //MARK: - <Body>
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
