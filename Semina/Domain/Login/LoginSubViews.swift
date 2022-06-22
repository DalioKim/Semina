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
            .asMainImageStyle()
    }
    
    var top: some View {
        VStack(spacing:20){
            CustomTextField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
                .asTextFieldStyle()
                
            CustomSecureField(text: $password, placeholder: Text("Password"))
                .asSecureFieldStyle()
        }
    }
    
    var bottom: some View {
        NavigationLink {
            LoginView()
        } label: {
            Text("로그인")
                .asLabelStyle()
        }
    }
}
