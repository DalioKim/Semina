//
//  ImageStyle.swift
//  Semina
//
//  Created by 김동현 on 2022/06/22.
//

import SwiftUI

extension Image {
    func asMainImageStyle(withMaxWidth maxWidth: CGFloat = 100, withMaxHeight maxHeigh: CGFloat = 100) -> some View {
        
        self.resizable()
            .scaledToFit()
            .frame(width: maxWidth, height: maxHeigh)
            .cornerRadius(10)
    }
    
    func asIconStyle(withMaxWidth maxWidth: CGFloat = 20, withMaxHeight maxHeigh: CGFloat = 20) -> some View {
        
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: maxWidth, height: maxHeigh)
            .foregroundColor(.white)
    }
    
    func asThumbnailStyle(withMaxWidth maxWidth: CGFloat = 100) -> some View {
        
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: maxWidth)
    }
}
