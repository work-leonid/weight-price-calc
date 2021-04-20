//
//  ContentView.swift
//  PriceCalc
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI
import Combine

enum MainText: String {
    case title = "Сколько?"
    case weightGramm = "грамм"
    case placeholderWeight = "Вес"
    case placeholderPrice = "Цена"
    case buttonClearAll = "Очистить"
    case pricePerKg = "₽/кг"
}



struct MainView: View {
    var body: some View {
        KeyboardAvoidance()
    }
}

//struct ContentView: View {
//
//    @State private var inputWeight = ""
//    @State private var inputPrice = ""
//    @State private var checkAmount = 0
//    @State private var focusWeightTextField = true
//    @State private var focusPriceTextField = false
//
//    @State private var keyboardHeight: CGFloat = 0
//
//    var price: Int {
//        let priceKg = Int(inputPrice) ?? 0
//        let weightKg = Int(inputWeight) ?? 0
//        let sum = (priceKg * weightKg) / 1000
//        return sum
//    }
//
//    let gram = MainText.weightGramm.rawValue
//    let title = MainText.title.rawValue
//    let placeholderWeight = MainText.placeholderWeight.rawValue
//    let placeholderPrice = MainText.placeholderPrice.rawValue
//    let pricePerKg = MainText.pricePerKg.rawValue
//    let buttonClearAll = MainText.buttonClearAll.rawValue
//
//    var body: some View {
//        NavigationView {
//            Form {
//                VStack(alignment: .leading, spacing: 0) {
//                    Text("\(price)₽")
//                        .font(.system(size: 100, weight: .thin))
//                        .padding(.vertical, -10)
//                    Text("за \(Int(inputWeight) ?? 0) \(gram)")
//                        .font(.title3)
//                        .foregroundColor(.secondary)
//                }
//                .padding(.vertical).padding(.vertical)
//
//                HStack {
//
//                    HStack {
//                        TextFieldFirstResponder(text: $inputWeight, isResponder: $focusWeightTextField, placeholder: placeholderWeight)
//                        Text(gram)
//                    }
//
//                    Divider()
//
//                    HStack {
//                        TextFieldFirstResponder(text: $inputPrice, isResponder: $focusPriceTextField, placeholder: placeholderPrice)
//                        Text(pricePerKg)
//                    }
//
//                }
//
//                Button(action: {
//                    inputPrice = ""
//                    inputWeight = ""
//                    focusWeightTextField = true
//                    focusPriceTextField = false
//                }, label: {
//                    Text(buttonClearAll)
//                })
//
//            }
//            .navigationBarTitle(title)
//        }
//    }
//
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
