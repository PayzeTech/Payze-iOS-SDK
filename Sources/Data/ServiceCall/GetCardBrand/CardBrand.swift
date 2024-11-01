//
//  CardBrand.swift
//  Pay
//
//  Created by Giga Khizanishvili on 12.07.24.
//

import SwiftUI

enum CardBrand: Decodable {
    case amex
    case visa
    case mastercard
    case humo
    case uzCard

    // MARK: - CodingKeys
    private enum CodingKeys: String, CodingKey {
        case amex = "Amex"
        case visa = "visa"
        case mastercard = "mastercard"
        case humo = "Humo"
        case uzCard = "uzCard"
    }
    
    var format: String {
        switch self {
        case .visa, .mastercard, .humo, .uzCard:
            "#### #### #### ####"
        case .amex:
            "#### ###### #####"
        }
    }

    var icon: Image {
        switch self {
        case .amex:
            Image("amex", bundle: .module)
        case .humo:
            Image("humo", bundle: .module)
        case .mastercard:
            Image("masterCard", bundle: .module)
        case .uzCard:
            Image("uzcard", bundle: .module)
        case .visa:
            Image("visa", bundle: .module)
        }
    }

    var hasCVV: Bool {
        cvvLength != nil
    }

    var cvvLength: Int? {
        switch self {
        case .amex:
            4
        case .visa:
            3
        case .mastercard:
            3
        case .humo:
            nil
        case .uzCard:
            nil
        }
    }
}
