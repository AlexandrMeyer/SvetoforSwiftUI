//
//  ContentView.swift
//  SvetoforSwiftUI
//
//  Created by Александр on 26.10.21.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: [Bool] = [false, false, false]
    @State private var count = 0
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                SetColor(color: .red, isActive: isActive[0])
                SetColor(color: .yellow, isActive: isActive[1])
                SetColor(color: .green, isActive: isActive[2])
                Spacer()
                setButton
            }
        }
    }
    
    private var setButton: some View {
        Button(count == 0 ? "Start" : "Next") {
            changeColor()
        }
        .font(.system(size: 35))
        .frame(width: 180, height: 60)
        .foregroundColor(.white)
        .background(Color.blue)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
        .cornerRadius(20)
        .padding()
    }
    
    private func changeColor() {
        count += 1
        if count % 3 == 1 {
            isActive[0].toggle()
            isActive[2] = false
        } else if count % 3 == 2 {
            isActive[0].toggle()
            isActive[1].toggle()
        } else {
            isActive[1].toggle()
            isActive[2].toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
