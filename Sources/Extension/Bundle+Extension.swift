//
//  Bundle+Extension.swift
//  Payze
//
//  Created by Giga Khizanishvili on 27.10.24.
//

import Foundation

extension Bundle {
#if SWIFT_PACKAGE
#else
    static var module: Bundle {
        let bundle = Bundle(for: Configuration.self)
        let bundleURL = bundle.resourceURL?
            .appendingPathComponent("PayzeResources.bundle")
        return Bundle(url: bundleURL!)
    }
#endif
}
