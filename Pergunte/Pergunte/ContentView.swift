//
//  ContentView.swift
//  Pergunte
//
//  Created by Yasmin Kaline on 23/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("baloes")
                
                Text("Me faz uma pergunta")
                  .font(Font.custom("Bungee-Regular", size: 46.39954))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                  .frame(width: 390, alignment: .top)
                
                ZStack{
                    Image("botao")
                    
                    NavigationLink("Começar", destination: PerguntaView())
                      .font(Font.custom("Bungee-Regular", size: 30))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                      .frame(width: 263, height: 52, alignment: .center)
                }
                
            }
        }
    }
}
