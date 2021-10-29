//
//  ButtonView.swift
//  SvetoforSwiftUI
//
//  Created by Александр on 27.10.21.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 35))
                .tint(.white)
                .frame(width: 180, height: 60)
        }
        .background(.blue)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
        .cornerRadius(20)
        .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
