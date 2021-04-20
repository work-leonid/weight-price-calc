//
//  KeyboardAvoidance.swift
//  PriceCalc
//
//  Created by Leonid Nazarov on 20.04.2021.
//

import SwiftUI
import Combine

struct KeyboardAvoidance: View {
    
    @State private var text = ""
    @State private var keyboardHeight: CGFloat = 0
    @State private var isResponder = true
    
    var body: some View {
        VStack() {
            
            Spacer()
            
            TextFieldFirstResponder(text: $text, isResponder: $isResponder, placeholder: "hey")
                .frame(height: 40)
                .background(Color.red)
        }
        .padding()
        
//        .padding(.bottom, keyboardHeight)
//        .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}

struct KeyboardAvoidance_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAvoidance()
    }
}
