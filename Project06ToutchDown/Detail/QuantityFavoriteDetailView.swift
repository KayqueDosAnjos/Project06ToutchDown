//
//  QuantityFavoriteDetailView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //MARK: - <Properties>
    
    @State private var counter: Int = 0
    
    //MARK: - <Body>
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })//: BUTTON
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })//: BUTTON
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })//: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavoriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
