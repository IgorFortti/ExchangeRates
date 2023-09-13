//
//  RateHistoricalModel.swift
//  ExchangeRates
//
//  Created by Igor Fortti on 13/09/23.
//

import Foundation

struct RateHistoricalModel: Identifiable {
    let id = UUID()
    var symbol: String
    var period: Date
    var endRate: Double
}
