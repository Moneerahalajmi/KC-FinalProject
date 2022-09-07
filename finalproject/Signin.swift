//
//  Signin.swift
//  finalproject
//
//  Created by Moneerah Alajmi on 9/7/22.
//

import SwiftUI

struct Signin: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State var shwoingSignin = false
    
    var body: some View {
        NavigationView{
        ZStack{
            Color.yellow
                .opacity(0.5)
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.28))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            VStack{
    Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top,100)
               
                TextField("Username", text:$username)
                    .padding()
                    .frame(width:300, height:50)
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongUsername))
                TextField("Password", text:$password)
                    .padding()
                    .frame(width:300, height:50)
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                Button("Login") {
                    authenticateUser(username: username, password: password)
                } .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
                NavigationLink( destination: Games()){
            
                
                Image("books")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                }
            }
           
             }
        .navigationBarHidden(true)
        }
    }
    func authenticateUser( username:String, password:String){
        if username.lowercased() == "amy2003"{
            wrongUsername = 0
            if password.lowercased() == "abc123"{
                wrongPassword = 0
                shwoingSignin = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct Signin_Previews: PreviewProvider {
    static var previews: some View {
        Signin()
    }
}
