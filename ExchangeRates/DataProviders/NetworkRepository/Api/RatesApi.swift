//
//  RatesApi.swift
//  ExchangeRates
//
//  Created by Igor Fortti on 13/09/23.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "628db9a7075bcbd7a19175586c7fff37"
    static let fluctuation = "/fluctuation"
    static let symbols = "/symbols"
    static let timeseries = "/timeseries"
    
}
