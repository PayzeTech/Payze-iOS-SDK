//
//  Localizable.swift
//  Pay
//
//  Created by Giga Khizanishvili on 23.08.24.
//

import Foundation

protocol Localizable { }

extension Localizable {
    func callAsFunction(_ args: any CVarArg...) -> String {
        @Injected var configuration: Configuration
        
        let languageIdentifier = switch configuration.language {
        case .english: "en"
        case .russian: "ru"
        case .uzbekistan: "uz-UZ"
        }

        let bundle = makeBundle()

        guard let path = bundle.path(forResource: languageIdentifier, ofType: "lproj"),
              let languageBundle = Bundle(path: path)
        else {
            return NSLocalizedString(name, bundle: bundle, comment: "")
        }

        return NSLocalizedString(name, bundle: languageBundle, comment: "")
    }

    private func makeBundle() -> Bundle {
#if SWIFT_PACKAGE
        .module
#else
        Bundle(for: Localizable.self)
#endif
    }

    private var name: String {
        let components = String(reflecting: self)
            .components(separatedBy: ["."])
            .dropFirst() // Module name
            .dropFirst() // LocalizationKey
            .map(\.withLowercasedFirstLetter)

        return ([moduleName] + components)
            .joined(separator: ".")
    }

    private var moduleName: String { "pay" }
}

private extension String {
    var withLowercasedFirstLetter: String {
        prefix(1).lowercased() + dropFirst()
    }
}
