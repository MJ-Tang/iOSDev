//
//  MemoryGame.swift
//  Memorize
//
//  Created by 唐明骏 on 2022/2/28.
//

import Foundation


struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfParisOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
//      add number of paris of cards X 2 cards to cards array
        for pairIndex in 0..<numberOfParisOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
