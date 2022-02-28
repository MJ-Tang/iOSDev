//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 唐明骏 on 2022/2/28.
//

import SwiftUI



class EmojiMemoryGame {
    
    static let emojis = [
        "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🚲", "🛵", "🏍", "🛺", "🚔", "✈️", "🛫", "🛬", "🛩", "🚁"
    ]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfParisOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
         model.cards
    }
}
