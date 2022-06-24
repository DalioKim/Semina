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
            placeholder
                .isEmpty(!text.isEmpty)
                .asPlacehodlerStyle()

            imageHolder
        }
    }
}

extension CustomSecureField {
    var imageHolder: some View {
        HStack{
            Image(systemName: "lock")
                .asIconStyle()
            SecureField("",text: $text)
        }
    }
}
