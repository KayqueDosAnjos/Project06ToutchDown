//
//  SectionView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct SectionView: View {
    //MARK: - <Properties>
    @State var rotateClockWise: Bool
    
    //MARK: - <Body>
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockWise: true)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
