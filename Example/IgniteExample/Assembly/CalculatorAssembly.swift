//
//  CalculatorAssembly.swift
//  IgniteExample
//
//  Created by Grzegorz Sagadyn on 21/09/2020.
//  Copyright © 2020 IgniteExample. All rights reserved.
//

import Foundation
import Ignite
import Combine

public protocol CalculatorAssemblyType: AssemblyLayerType {
    func pow(_ x: Int, by y: Int) -> AnyPublisher<Int, Never>
}

// -----------------------------------------------------------------------------
// MARK: - Services
// -----------------------------------------------------------------------------

internal class CalculatorAssembly: AssemblyLayer, CalculatorAssemblyType {
    private let multiplyService = MultiplyService()
}

// -----------------------------------------------------------------------------
// MARK: - Implementation
// -----------------------------------------------------------------------------

extension CalculatorAssembly {
    internal func pow(_ x: Int, by y: Int) -> AnyPublisher<Int, Never> {
        (0 ..< max(y, 0)).publisher
            .reduce(Just<Int>(1).eraseToAnyPublisher()) { publisher, _ -> AnyPublisher<Int, Never> in
                publisher.flatMap { [unowned self] in multiplyService.multiply($0, by: x) }.eraseToAnyPublisher()
            }
            .switchToLatest()
            .eraseToAnyPublisher()
    }
}
