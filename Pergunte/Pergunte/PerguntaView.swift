import SwiftUI

struct PerguntaView: View {
    let questions = [
        "Qual é o seu livro favorito?",
        "Qual é o lugar mais bonito que você já visitou?",
        "Se você pudesse ter um superpoder, qual seria?",
        "Qual é a sua lembrança mais engraçada da infância?",
        "Se você pudesse jantar com qualquer pessoa, viva ou morta, quem seria?",
        "Qual é a sua meta de vida mais importante?",
        "Qual é a sua estação do ano favorita e por quê?",
        "Se você ganhasse na loteria, o que faria primeiro?",
        "Qual é a sua comida favorita?",
        "O que te faz mais feliz?"
    ]
    let azul = Color(red: 0.82, green: 0.93, blue: 1)
    let amarelo = Color(red: 1, green: 0.98, blue: 0.86)
    let vermelho = Color(red: 1, green: 0.92, blue: 0.92)
    
    let backgroundColors: [Color]
    

    init() {
        backgroundColors = [azul, amarelo, vermelho]
    }
    
    @State private var currentQuestion = ""
    @State private var currentBackgroundColor = Color(red: 0.82, green: 0.93, blue: 1)
        
    
    var randomQuestion: String {
        return questions.randomElement() ?? ""
    }
    
    var randomBackgroundColor: Color {
        return backgroundColors.randomElement() ?? Color.white
    }

    var body: some View {
        ZStack {
            currentBackgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                ZStack{
                    Image("azul grande")
                    Text("\(currentQuestion)")
                        .font(Font.custom("PoetsenOne", size: 22))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        .frame(width: 250, height: 305)
                        .navigationBarHidden(true)
                }
                
                HStack {
                    Button(action: {
                        currentQuestion = randomQuestion
                        currentBackgroundColor = randomBackgroundColor
                    }) {
                        ZStack {
                            Image("azul pequeno")
                            Text("Nova pergunta")
                              .font(Font.custom("PoetsenOne", size: 20))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                              .frame(width: 203, height: 39.85404, alignment: .center)
                        }
                    }
                }
            }
        }
        .onAppear {
            currentQuestion = randomQuestion
            currentBackgroundColor = randomBackgroundColor
        }
    }
}

