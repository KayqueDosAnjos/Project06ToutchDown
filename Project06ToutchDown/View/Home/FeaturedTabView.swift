//
//  FeaturedTabView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .previewDevice("iphone 12 Pro")
        .background(Color.gray)
}
