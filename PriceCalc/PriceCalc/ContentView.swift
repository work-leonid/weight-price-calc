//
//  ContentView.swift
//  PriceCalc
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputWeight = ""
    @State private var inputPrice = ""
    @State private var checkAmount = 0
    
    var price: Int {
        let priceKg = Int(inputPrice) ?? 0
        let weightKg = Int(inputWeight) ?? 0
        let sum = (priceKg * weightKg) / 1000
        return sum
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    Text("\(price)₽")
                    Text("за \(Int(inputWeight) ?? 0) грамм")
                }
                
                Section {
                    TextField("Weight in grams", text: $inputWeight)
                        .keyboardType(.decimalPad)
                        .foregroundColor(.red)
                    HStack {
                        TextField("Price kg", text: $inputPrice)
                            .keyboardType(.decimalPad)
                        Text("кг")
                    }
                    
                }
                
                
            }
            .navigationBarTitle("How much?")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
