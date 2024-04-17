//
//  Extension+View.swift
//  Jackpot
//
//  Created by Guillaume on 16/04/2024.
//

import SwiftUI

extension View {
    func textAspect(color: Color? = nil , height:CGFloat = 80) -> some View {
        self
            .foregroundColor(color)
            .frame(width: 200, height: height)
            .background(LinearGradient(colors: [.red, .green, .blue], startPoint: .bottomTrailing, endPoint: .topLeading))
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    func aspectButton() {
        self
    }
}
