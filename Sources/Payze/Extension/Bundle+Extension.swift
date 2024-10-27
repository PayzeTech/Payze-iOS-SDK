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
        Bundle(for: Configuration.self)
    }
#endif
}
