//
//  FieldStyle.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

extension View {
    @ViewBuilder func asTextFieldStyle(withHorizonPadding horizon: CGFloat = 32,
                                       withCornerRadius corner: CGFloat = 10,
                                       withForegroundColor foreground: Color = Color.white) -> some View {
        
        self.background(Color(.init(white: 4, alpha: 0.15)))
            .cornerRadius(corner)
            .foregroundColor(foreground)
            .padding(.top, 40)
            .padding(.horizontal, horizon)
    }
    
    @ViewBuilder func asSecureFieldStyle(withHorizonPadding horizontal: CGFloat = 32,
                                         withCornerRadius corner: CGFloat = 10,
                                         withForegroundColor foreground: Color = Color.white) -> some View {
        
        self.background(Color(.init(white: 4, alpha: 0.15)))
            .cornerRadius(corner)
            .foregroundColor(foreground)
            .padding(.horizontal, horizontal)
    }
}
