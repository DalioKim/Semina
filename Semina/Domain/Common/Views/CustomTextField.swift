//
//  CustomTextField.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text : String
    let placeholder : Text
    let imageName : String
    
    var body: some View {
        ZStack(alignment: .leading) {
            placeholder
                .isEmpty(!text.isEmpty)
                .asPlacehodlerStyle()
            
            imageHolder
        }
    }
}

extension CustomTextField {
    var imageHolder: some View {
        HStack{
            Image(systemName: imageName)
                .asIconStyle()
            
            TextField("",text: $text)
        }
    }
}
