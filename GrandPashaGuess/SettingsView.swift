//
//  SettingsView.swift
//  GrandPashaGuess
//
//  Created by Nicolae Chivriga on 23/12/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.requestReview) var requestReview
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bge")
                .resizable()
                .ignoresSafeArea()
            
            Button {
                requestReview()
            } label: {
                Image("rectn")
                    .overlay {
                        Text("STARS")
                            .font(.system(size: 30, weight: .black, design: .monospaced))
                            .foregroundStyle(.white)
                    }
            }
            
            Button {
                if let url = URL(string: "mailto:emmondspies@gmail.com") {
                                              if UIApplication.shared.canOpenURL(url) {
                                                  UIApplication.shared.open(url)
                                              }
                                          }
            } label: {
                Image("rectn")
                    .overlay {
                        Text("CONTACT")
                            .font(.system(size: 30, weight: .black, design: .monospaced))
                            .foregroundStyle(.white)
                    }
            }

           
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Image("bk")
            .resizable()
            .frame(width: 30, height: 36)
            .onTapGesture {
                dismiss()
            })
    }
}
