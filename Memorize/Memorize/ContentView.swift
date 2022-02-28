//
//  ContentView.swift
//  Memorize
//
//  Created by 唐明骏 on 2022/2/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
//    var emojis = [
//        "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🚲", "🛵", "🏍", "🛺", "🚔", "✈️", "🛫", "🛬", "🛩", "🚁"
//    ]
//
//    @State var emojiCount = 24
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(viewModel.cards, content: { card in
                        CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        
    }
    
}


struct CardView: View {
    let card:MemoryGame<String>.Card
    
//    var content: String
//    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius:20)
            if card.isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth:3)
                
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}





























struct ContentView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
    }
}
