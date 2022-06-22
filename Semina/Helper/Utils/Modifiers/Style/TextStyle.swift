//
//  TextStyle.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct LabelViewModifier: ViewModifier {
    var font: Font
    var foregroundColor: Color
    var backgroundColor: Color
    var maxWidth: CGFloat
    var maxHeigh: CGFloat
    
    func body(content: Content) -> some View {
        
        content
            .font(font)
            .foregroundColor(foregroundColor)
            .frame(width: maxWidth, height: maxHeigh)
            .background(backgroundColor)
            .padding(.bottom, 20)
            .padding(.horizontal, 32)
    }
}

struct PlacehodlerViewModifier: ViewModifier {
    var foregroundColor: Color
    func body(content: Content) -> some View {
        
        content
            .foregroundColor(foregroundColor)
            .padding(.leading, 40)
    }
    
}

extension View {
    @ViewBuilder func asLabelStyle(withFont font: Font = .headline,
                                   withForegroundColor foregroundColor: Color = .white,
                                   withBackgroundColor backgroundColor: Color = Color(.init(white: 4, alpha: 0.15)),
                                   withMaxWidth maxWidth: CGFloat = 300,
                                   withMaxHeight maxHeigh: CGFloat = 50)  -> some View {
        
        modifier(LabelViewModifier(font: font, foregroundColor: foregroundColor, backgroundColor: backgroundColor,
                                   maxWidth: maxWidth, maxHeigh: maxHeigh))
    }
    
    @ViewBuilder func asPlacehodlerStyle(withForegroundColor foregroundColor: Color = Color(.init(white: 1, alpha: 0.8))) -> some View {
        
        modifier(PlacehodlerViewModifier(foregroundColor: foregroundColor))
    }
}
