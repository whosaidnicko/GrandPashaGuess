//
//  GuessGameView.swift
//  GrandPashaGuess
//
//  Created by Nicolae Chivriga on 24/12/2024.
//

import SwiftUI

struct GuessGameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bge")
                .resizable()
                .ignoresSafeArea()
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/guess-it/")!, onLoadCompletion: {
                withAnimation {
                    
                }
            })
        } .navigationBarBackButtonHidden()
            .navigationBarItems(leading: Image("bk")
                .resizable()
                .frame(width: 34, height: 28)
                .onTapGesture {
                    dismiss()
                })
    }
}
