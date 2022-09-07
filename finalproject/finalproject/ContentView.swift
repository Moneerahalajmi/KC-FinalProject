//
//  ContentView.swift
//  finalproject
//
//  Created by Moneerah Alajmi on 8/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var usernamae = ""
    var body: some View {
        NavigationView{
        ZStack{
            Color.yellow
                .opacity(0.5)
                .ignoresSafeArea()
           
            VStack{
                Image("animals")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 470, height: 610)
                Spacer()
                NavigationLink(destination: Signin()){
                Text("Log In")
                        .padding()
                    .background(.red)
                    .cornerRadius(30)
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                
                
            
            }
            }
            
        } .navigationTitle("Brilliant Minds")
                .foregroundColor(.init(white: 0.5))
               
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
