//
//  HTTPError.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import Foundation

public enum HTTPError: Error, Equatable {
    case cancelled
    case noResponse
    case invalidResponse
    case withMessage(title: String?, message: String)
}
