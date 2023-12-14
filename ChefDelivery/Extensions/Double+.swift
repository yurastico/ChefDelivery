//
//  Double+.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 14/12/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
