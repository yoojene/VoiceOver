//
//  ContentView.swift
//  VoiceOver
//
//  Created by Eugene on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
    "Tulips", "Frozen tree buds", "Sunflowers", "Fireworks"
    ]
    
    var body: some View {
        VStack {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    selectedPicture = Int.random(in: 0...3)
                }
                .accessibilityLabel(labels[selectedPicture]) //spoken immediatly
                .accessibilityAddTraits(.isButton)
                //.accessibilityRemoveTraits(<#T##traits: AccessibilityTraits##AccessibilityTraits#>) // remove 
//                .accessibilityHint(<#T##hint: Text##Text#>) // after a short delay after label
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
