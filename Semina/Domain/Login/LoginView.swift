//
//  LoginView.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct LoginView: View {
    var mainImage: some View {
        Image(Asset.nrc.name)
            .asMainImageStyle()
    }
    
    var loginHolder: some View {
        VStack(spacing: 20) {
            mainImage
            FiledView()
        }
        .padding(.top, 10)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                loginHolder
            }
        }
    }
}


struct FiledView: View {
    @State private var email = ""
    @State private var password = ""
    
    var filed: some View {
        VStack(spacing:20){
            CustomTextField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
                .asTextFieldStyle()
            
            CustomSecureField(text: $password, placeholder: Text("Password"))
                .asSecureFieldStyle()
        }
    }
    
    var button: some View {
        NavigationLink {
            LoginView()
        } label: {
            Text("로그인")
                .asLabelStyle()
        }
    }
    
    var body: some View {
        VStack {
            filed
            button
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
