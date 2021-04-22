//
//  CalculatorView.swift
//  PriceCalc
//
//  Created by Leonid Nazarov on 22.04.2021.
//

import SwiftUI

struct CalculatorView: View {
    
    @State private var weightInput = ""
    @State private var priceInput = ""
    @State private var checkAmount = 0
    
    var price: Int {
        let priceNumber = Int(priceInput) ?? 0
        let weightNumber = Int(weightInput) ?? 0
        let sum = (priceNumber * weightNumber) / 1000
        return sum
    }
    
    var resultView: some View {
        VStack(alignment: .leading) {
            Text("\(price)₽")
                .font(.system(size: 100, weight: .thin))
                .padding(.vertical, -10)
            Text("за \(weightInput) грамм")
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    var inputView: some View {
        HStack {
            HStack {
                TextField("Вес", text: $weightInput)
                    .keyboardType(.decimalPad)
                Text("грамм")
            }
            
            Divider()
            
            HStack {
                TextField("Цена", text: $priceInput)
                    .keyboardType(.decimalPad)
                Text("₽/кг")
            }
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                resultView
                
                inputView
                     
                Button(action: {
                    clearAll()
                }, label: {
                    Text("Очистить")
                })
                }
                .navigationBarTitle("Сколько сколько?")
        }
    }
    
    private func clearAll() {
        priceInput = ""
        weightInput = ""
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
