//
//  CurrencyRouter.swift
//  ExchangeRates
//
//  Created by Igor Fortti on 13/09/23.
//

import Foundation

enum CurrencyRouter {
    
    case symbols
    
    var path: String {
        switch self {
        case .symbols: return RatesApi.symbols
        }
    }
    
    func asUrlRequest() -> URLRequest? {
        guard let url = URL(string: RatesApi.baseUrl) else { return nil }
        
        switch self {
        case .symbols:
            var request = URLRequest(url: url.appendingPathComponent(path), timeoutInterval: Double.infinity)
            request.httpMethod = HttpMethod.get.rawValue
            request.addValue(RatesApi.apiKey, forHTTPHeaderField: "apikey")
            return request
        }
    }
    
}
