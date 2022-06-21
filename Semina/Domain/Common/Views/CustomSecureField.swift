//
//  CustomSecureField.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text : String
    let placeholder : Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading,40)
            }
            
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                SecureField("",text: $text)
            }
        }
    }
}

extension CustomSecureField: SubView {
    func didSet(_ viewConfigure: ViewConfigure) -> some View {
        switch viewConfigure {
        case .main:
            return self.padding()
                .background(Color(.init(white: 4, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.horizontal,32)
        }
    }
}
