//
//  NavigationBarView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - <Properties>
    
    @State private var isAnimating: Bool = false
    
    //MARK: - <Body>
    
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })//: BUTTON
            
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating.toggle()
                    }
                })
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: ZSTACK
            })//: BUTTON
        }//: HSTACK
    }
}

#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
        .padding()
}
