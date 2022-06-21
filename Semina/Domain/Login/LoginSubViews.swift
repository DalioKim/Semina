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
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: 100, height: 100)
    }
    
    var top: some View {
        VStack(spacing:20){
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .background(Color(.init(white: 4, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.top,40)
                .padding(.horizontal,32)
            
            CustomSecureField(text: $password, placeholder: Text("Password"))
                .padding()
                .background(Color(.init(white: 4, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.horizontal,32)
        }
    }
    
    var bottom: some View {
            NavigationLink {
                LoginView()
            } label: {
                Text("로그인")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(.init(white: 4, alpha: 0.15)))
                    .padding(.bottom, 20)
                    .padding(.horizontal,32)
            }
    }
}
