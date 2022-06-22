//
//  ImageModifier.swift
//  Semina
//
//  Created by 김동현 on 2022/06/22.
//

import SwiftUI

protocol ImageModifier {
    associatedtype Body: View
    func body(image: Image) -> Self.Body
}

extension Image {
    func modifier<M>(_ modifier: M) -> some View where M: ImageModifier {
        modifier.body(image: self)
    }
}

struct Field: ImageModifier {
    func body(image: Image) -> some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundColor(.white)
    }
}

struct Main: ImageModifier {
    func body(image: Image) -> some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .cornerRadius(10)
    }
}
