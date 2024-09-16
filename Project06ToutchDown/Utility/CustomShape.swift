//
//  CustomShape.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 16/09/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

    
    #Preview {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 128))
            .padding()
    }

