//
//  FieldModifier.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

enum FieldStyle {
    case text
    case secure
}

extension View {
    @ViewBuilder func style(_ style: FieldStyle) -> some View {
        switch style {
        case .text:
            self.padding()
                .background(Color(.init(white: 4, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.top, 40)
                .padding(.horizontal, 32)
            
        case .secure:
            self.padding()
                .background(Color(.init(white: 4, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.horizontal, 32)
        }
    }
}
