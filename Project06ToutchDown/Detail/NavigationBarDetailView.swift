//
//  NavigationBarDetailView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - <Properties>
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - <Body>
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//: HSTACK
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}
