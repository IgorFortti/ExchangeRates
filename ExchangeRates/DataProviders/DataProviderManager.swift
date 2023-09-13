//
//  DataProviderManager.swift
//  ExchangeRates
//
//  Created by Igor Fortti on 13/09/23.
//

import Foundation

protocol DataProviderManagerDelegate: AnyObject {
    func success(model: Any)
    func errorData(_ provider: DataProviderManagerDelegate?, error: Error)
}

extension DataProviderManagerDelegate {
    func success(model: Any) {
            preconditionFailure("This Method must be overridden")
    }
    
    func errorData(_ provider: DataProviderManagerDelegate?, error: Error) {
        debugPrint(error.localizedDescription)
    }
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
