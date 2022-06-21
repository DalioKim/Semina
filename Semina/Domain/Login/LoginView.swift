//
//  LoginView.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var loginHolder: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                image
                top
                bottom
            }
            .padding(.top, 10)
        }
    }
    
    var body: some View {
        NavigationView {
            loginHolder
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
