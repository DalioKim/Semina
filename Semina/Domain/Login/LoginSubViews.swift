//
//  LoginSubViews.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

extension LoginView {
    var image: some View {
        Image("nrc")
            .modifier(MainImage())
    }
    
    var top: some View {
        VStack(spacing:20){
            CustomTextField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
                .style(.textField)

            CustomSecureField(text: $password, placeholder: Text("Password"))
                .style(.secureField)
        }
    }
    
    var bottom: some View {
        NavigationLink {
            LoginView()
        } label: {
            Text("로그인")
                .modifier(LabelModifier())
        }
    }
}
