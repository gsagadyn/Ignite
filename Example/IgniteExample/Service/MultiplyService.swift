//
//  MultiplyService.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import Foundation
import Ignite
import Combine

public protocol MultiplyServiceType: ServiceLayerType {
    func multiply(_ x: Int, by y: Int) -> AnyPublisher<Int, Never>
}

// -----------------------------------------------------------------------------
// MARK: - Implementation
// -----------------------------------------------------------------------------

internal class MultiplyService: ServiceLayer, MultiplyServiceType {
    internal func multiply(_ x: Int, by y: Int) -> AnyPublisher<Int, Never> {
        Future<Int, Never> { promise in
            promise(.success(x * y))
        }
        .eraseToAnyPublisher()
    }
}
