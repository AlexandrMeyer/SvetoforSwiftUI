//
//  SetColor.swift
//  SvetoforSwiftUI
//
//  Created by Александр on 26.10.21.
//

import SwiftUI

struct SetColor: View {
    var color: Color
    var isActive: Bool
    
    var body: some View {
            Circle()
            .foregroundColor(color).opacity(isActive ? 1 : 0.3)
                .frame(width: 140, height: 140)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .padding(6)
    }
}

struct SetColor_Previews: PreviewProvider {
    static var previews: some View {
        SetColor(color: .red, isActive: false)
    }
}
