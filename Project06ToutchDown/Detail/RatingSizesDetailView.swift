//
//  RatingSizesDetailView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct RatingSizesDetailView: View {
    //MARK: - <Properties>
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - <Body>
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach(1...5, id: \.self){ item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })//: BUTTON
                    }//: LOOP
                })//: HSTACK
            })//: VSTACK
            
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { sizes in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(sizes)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })//: BUTTON
                    }//: LOOP
                })//"HSTACK
            })//: VSTACK
        })//:HSTACK
    }
}

#Preview {
    RatingSizesDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
