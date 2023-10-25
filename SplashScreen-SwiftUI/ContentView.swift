//
//  ContentView.swift
//  SplashScreen-SwiftUI
//
//  Created by Zaid Sheikh on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
            
    @State private var moveUp: Bool = false
    
    @State var isLoggin: Bool = false
    
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("astronaut")
                    .resizable()
                    .frame(width: 300,height: 250)
                    .offset(y: moveUp ? 20 : -20)
                    .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: moveUp)
            }
            .offset(y: isLoggin ? -600 : 0)
            
            
            
            LoginView()
                .offset(y: isLoggin ? 0 : 800)
                .animation(.spring(response: 9, dampingFraction: 0.7), value: isLoggin)
            
            
        }
        .padding(.vertical, 5)
        .ignoresSafeArea()
        .onAppear(){
            moveUp = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                withAnimation(.easeInOut(duration: 4)){
                    isLoggin = true
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
