//
//  ConditionalModifier.swift
//  Semina
//
//  Created by 김동현 on 2022/06/22.
//

import SwiftUI

struct EmptyModifier: ViewModifier {
    let isEmpty: Bool
    func body(content: Content) -> some View {
        Group {
            if isEmpty {
                EmptyView()
            } else {
                content
            }
        }
    }
}

extension View {
    func isEmpty(_ bool: Bool) -> some View {
        modifier(EmptyModifier(isEmpty: bool))
    }
}
