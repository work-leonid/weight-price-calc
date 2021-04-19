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
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(price)₽")
                        .font(.system(size: 100, weight: .thin))
                        .padding(.vertical, -10)
                    Text("за \(Int(inputWeight) ?? 0) грамм")
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical)
                
                HStack {
                    
                    HStack {
                        TextField("Weight", text: $inputWeight)
                            .keyboardType(.decimalPad)
                        Text("грамм")
                    }
                    
                    Divider()
                    
                    HStack {
                        TextField("Price", text: $inputPrice)
                            .keyboardType(.decimalPad)
                        Text("₽/кг")
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
