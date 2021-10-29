//
//  ContentView.swift
//  SvetoforSwiftUI
//
//  Created by Александр on 26.10.21.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    @State private var redlights = 0.3
    @State private var yellowlights = 0.3
    @State private var greenlights = 0.3
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            redlights = lightIsOn
            greenlights = lightIsOff
            currentLight = .yellow
        case .yellow:
            redlights = lightIsOff
            yellowlights = lightIsOn
            currentLight = .green
        case .green:
            yellowlights = lightIsOff
            greenlights = lightIsOn
            currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: redlights)
                ColorCircleView(color: .yellow, opacity: yellowlights)
                ColorCircleView(color: .green, opacity: greenlights)
                
                Spacer()
                
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


