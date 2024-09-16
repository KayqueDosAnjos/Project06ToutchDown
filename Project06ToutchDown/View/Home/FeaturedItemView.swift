//
//  FeaturedItemView.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - <Properties>
    
    let player: Player
    
    //MARK: - <Body>
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
