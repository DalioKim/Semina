//
//  TextModifier.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct Label: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color(.init(white: 4, alpha: 0.15)))
            .padding(.bottom, 20)
            .padding(.horizontal,32)
    }
}

struct Placehodler: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
            .padding(.leading,40)
    }
    
}
