//
//  MemoryGame.swift
//  Memorize
//
//  Created by Michael Richardson on 30/05/2020.
//  Copyright © 2020 Michael Richardson. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    func choose(card: Card){
        print("Card chosen: \(card)")
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
