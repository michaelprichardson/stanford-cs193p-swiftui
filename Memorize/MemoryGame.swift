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
        cards.shuffle()
    }
    
    mutating func choose(card: Card){
        print("Card chosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp.toggle()
    }
    
    func index(of card: Card) -> Int {
        for ii in 0..<self.cards.count {
            if card.id == self.cards[ii].id {
                return ii
            }
        }
        return 0 // TODO: FIX THIS
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
