//
//  TextFieldFirstResponder.swift
//  PriceCalc
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI

class CustomTextFieldCoordinator: NSObject, UITextFieldDelegate {
    @Binding var text: String
    @Binding var isResponder: Bool
    
    init(text: Binding<String>, isResponder: Binding<Bool>) {
        self._text = text
        self._isResponder = isResponder
    }
    
    func setResponder(_ isResponder: Bool) {
        DispatchQueue.main.async {
            self.isResponder = isResponder
        }
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        text = textField.text ?? ""
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        setResponder(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setResponder(false)
    }
}

extension UITextField {
    convenience init(coordinator: CustomTextFieldCoordinator) {
        self.init(frame: .zero)
        self.delegate = coordinator
    }
    func setFirstResponder(_ isResponder: Bool) {
        DispatchQueue.main.async {
            if isResponder {
                self.becomeFirstResponder()
            } else {
                self.resignFirstResponder()
            }
        }
    }
}

struct TextFieldFirstResponder: UIViewRepresentable {
    @Binding var text: String
    @Binding var isResponder: Bool
    let placeholder: String
    
    func makeUIView(context: UIViewRepresentableContext<TextFieldFirstResponder>) -> some UITextField {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.placeholder = placeholder
        return textField
    }
    
    func makeCoordinator() -> CustomTextFieldCoordinator {
        return CustomTextFieldCoordinator(text: $text, isResponder: $isResponder)
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<TextFieldFirstResponder>) {
        uiView.text = text
        uiView.setFirstResponder(isResponder)
        uiView.keyboardType = .decimalPad
    }
}
