//
//  MenuView.swift
//  GrandPashaGuess
//
//  Created by Nicolae Chivriga on 23/12/2024.
//

import SwiftUI


struct MenuView: View {
    var body: some View {
        ZStack {
            Image("bge")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logotip")
                
                NavigationLink {
                    GuessGameView()
                } label: {
                    Image("rectn")
                        .overlay {
                            Text("PLAY")
                                .font(.system(size: 30, weight: .black, design: .monospaced))
                                .foregroundStyle(.white)
                        }
                }
                .offset(x: 40)
                
                NavigationLink {
                    RulesView()
                } label: {
                    Image("rectn")
                        .overlay {
                            Text("RULES")
                                .font(.system(size: 30, weight: .black, design: .monospaced))
                                .foregroundStyle(.white)
                        }
                }
                .offset(x: -40)
                
                NavigationLink {
                    SettingsView()
                } label: {
                    Image("rectn")
                        .overlay {
                            Text("SETTINGS")
                                .font(.system(size: 30, weight: .black, design: .monospaced))
                                .foregroundStyle(.white)
                        }
                }
                .offset(x: 40)

              
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        
    }
}
