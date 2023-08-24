import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Color.white
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    GeometryReader { geometry in
                        VStack {
                            Image("baloes")
                                .position(x: geometry.size.width / 2, y: 40)
                            
                            Text("Me faz uma pergunta")
                                .font(Font.custom("LilitaOne-Regular", size: 40))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                .frame(width: 320)
                                .position(x: geometry.size.width / 2, y: 80)
                            
                            ZStack {
                                Image("botao")
                                
                                NavigationLink("Começar", destination: PerguntaView())
                                    .font(Font.custom("ComicSansMS", size: 30))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                
                            }.position(x: geometry.size.width / 2)
                        }
                    }
                )
        }
    }
}
