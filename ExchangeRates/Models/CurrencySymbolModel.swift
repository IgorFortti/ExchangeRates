//
//  CurrencySymbolModel.swift
//  ExchangeRates
//
//  Created by Igor Fortti on 13/09/23.
//

import Foundation

struct CurrencySymbolModel: Identifiable {
    let id = UUID()
    var symbol: String
    var fullName: String
}
