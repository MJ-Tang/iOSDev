//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 唐明骏 on 2022/2/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
