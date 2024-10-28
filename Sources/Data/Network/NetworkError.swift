//
//  NetworkError.swift
//  Pay
//
//  Created by Giga Khizanishvili on 12.07.24.
//

enum NetworkError: Error {
    case invalidURL
    case requestFailed(Error)
    case invalidResponse
    case invalidData
    case decodingFailed(Error)
    case serviceError(NetworkServiceError)
    
    var message: String {
        switch self {
        case .requestFailed(let error):
            error.localizedDescription
        case .decodingFailed(let error):
            error.localizedDescription
        case .serviceError(let networkServiceError):
            networkServiceError.status.message
        default:
            LocalizationKey.Error.Default.description()
        }
    }
}
