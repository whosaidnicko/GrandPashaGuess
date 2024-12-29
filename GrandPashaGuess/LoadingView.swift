//
//  LoadingView.swift
//  GrandPashaGuess
//
//  Created by Nicolae Chivriga on 14/12/2024.
//

import SwiftUI

struct LoadingView: View {
    @State var goingLoad: Bool = false
    @State var goMenu: Bool = false
    var body: some View {
        ZStack {
            Image("bge")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenuView(), isActive: $goMenu)
            VStack() {
                Image("logotip")
                
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.init(hex: "#DAB58B"))
                    .frame(width: 255, height: 24)
                    .overlay(alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black
                                ,lineWidth: 1)
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.init(hex: "#0D8883"))
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black
                                        ,lineWidth: 1)
                            }
                            .frame(width: 250 * (goingLoad ? 1 : 0) , height: 18, alignment: .leading)
                    }
                    .onAppear() {
                        withAnimation(Animation.linear(duration: 4.4)) {
                            goingLoad = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.4) {
                            goMenu = true 
                        }
                    }
            }
        }
        .fixlibhjesde()
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
