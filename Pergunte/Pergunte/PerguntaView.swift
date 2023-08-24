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
        "O que te faz mais feliz?",
        "Qual é a viagem dos seus sonhos?",
        "Se você pudesse aprender instantaneamente qualquer habilidade, qual escolheria?",
        "Qual é a sua música favorita e por que ela é significativa para você?",
        "Se pudesse viver em qualquer época da história, quando seria?",
        "Que tipo de atividade ou hobby você gostaria de experimentar no futuro?",
        "Qual foi o momento mais emocionante da sua vida até agora?",
        "Se você pudesse ter um animal de estimação exótico, qual escolheria?",
        "Qual é o filme que você poderia assistir repetidamente sem se cansar?",
        "Que conselho você daria ao seu 'eu' mais jovem?",
        "Se você pudesse viajar para qualquer lugar no universo, para onde iria?",
        "Qual é a sua memória mais significativa com amigos próximos ou familiares?",
        "Se você pudesse resolver um problema global, qual escolheria?",
        "Que livro você recomendaria a alguém que está procurando por uma boa leitura?",
        "Qual é a sua estação do ano menos favorita e por quê?",
        "Se você tivesse a chance de participar de um programa de televisão, qual escolheria?",
        "Qual é a coisa mais corajosa que você já fez?",
        "Se você pudesse doar uma grande quantia de dinheiro para uma causa, qual apoiaria?",
        "Qual é o seu cheiro favorito e o que ele evoca para você?",
        "Se você tivesse a oportunidade de aprender qualquer idioma instantaneamente, qual escolheria?",
        "O que você mais valoriza em um relacionamento de amizade?",
    ];

    let azul = Color(red: 0.82, green: 0.93, blue: 1)
    let amarelo = Color(red: 1, green: 0.98, blue: 0.86)
    let vermelho = Color(red: 1, green: 0.92, blue: 0.92)
    
    let backgroundColors: [Color]
    let backgroundColorNames = ["azul", "amarelo", "vermelho"]
    
    init() {
        backgroundColors = [azul, amarelo, vermelho]
    }
    
    @State private var currentQuestionIndex = 0
    @State private var currentBackgroundColorIndex = 0
    
    var body: some View {
        ZStack {
            backgroundColors[currentBackgroundColorIndex]
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                ZStack{
                    Image("\(backgroundColorNames[currentBackgroundColorIndex]) botao")
                    NavigationLink("  ", destination: ContentView())
                }
                .frame(width: 300, alignment: .trailing)
                
                ZStack{
                    
                    Image("\(backgroundColorNames[currentBackgroundColorIndex]) grande")
                    Text("\(questions[currentQuestionIndex])")
                        .font(Font.custom("PoetsenOne", size: 22))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        .frame(width: 250, height: 305)
                        .navigationBarHidden(true)
                }
                
                HStack {
                    Button(action: {
                        currentQuestionIndex = (currentQuestionIndex + 1) % questions.count
                        currentBackgroundColorIndex = (currentBackgroundColorIndex + 1) % backgroundColors.count
                    }) {
                        ZStack {
                            Image("\(backgroundColorNames[currentBackgroundColorIndex]) pequeno")
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
    }
}

