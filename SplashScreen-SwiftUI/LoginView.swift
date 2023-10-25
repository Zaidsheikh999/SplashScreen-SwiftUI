//
//  LoginView.swift
//  SplashScreen-SwiftUI
//
//  Created by Zaid Sheikh on 25/10/2023.
//

import SwiftUI

struct LoginView: View {

    @State private var tempText = ""

    var body: some View {
        VStack(spacing: 30){
            
            Image("LoginAstronaut")
                .resizable()
                .frame(width: 250, height: 250)
                .shadow(color: .white, radius: 6)
            
            Text("Astronaut")
                .font(.system(size: 50))
                .bold()
                .foregroundColor(.white)
                .shadow(radius: 10)
            
            VStack(spacing: 15){
                TextField("Email", text: $tempText)
                    .font(.system(size: 20))
                    .padding(.horizontal, 20)
                    .frame(width: 350, height: 55)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(radius: 10)
                
                TextField("Password", text: $tempText)
                    .font(.system(size: 20))
                    .padding(.horizontal, 20)
                    .frame(width: 350, height: 55)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(radius: 10)
            }
            
            Button {
                
            } label: {
                Text("Login")
                    .bold()
                    .font(.system(size: 20))
            }
            .frame(width: 300, height: 60)
            .background(.green)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(radius: 10)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
