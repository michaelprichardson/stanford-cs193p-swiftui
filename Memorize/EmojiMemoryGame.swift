//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Michael Richardson on 30/05/2020.
//  Copyright © 2020 Michael Richardson. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.creatememoryGame()
    
    private static func creatememoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex -> String in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.creatememoryGame()
    }
}

