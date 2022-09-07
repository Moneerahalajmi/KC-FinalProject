//
//  Games.swift
//  finalproject
//
//  Created by Moneerah Alajmi on 9/7/22.
//

import SwiftUI

struct Games: View {
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.5)
                .ignoresSafeArea()
            ScrollView{
            VStack{
               
                Text("Educational Games")
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .padding(.top,40)
                    
                    VStack{
                HStack{
                    Image("abc")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 175, height: 160)
                    Text("Alphapet Games")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        
                } .padding()
                Divider()
                HStack{
                    Image("1234")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 160)
                    Text("Number Games")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                }.padding()
                Divider()
                HStack{
                    Image("hippo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 160)
                    Text("Animals Games")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                } .padding()
                Divider()
             
                
            }.background(.white.opacity(0.3))
        }
            }
        }







    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
