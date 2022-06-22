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
                    .modifier(Placehodler())
            }
            
            HStack{
                Image(systemName: "lock")
                    .modifier(Field())
                SecureField("",text: $text)
            }
        }
    }
}

