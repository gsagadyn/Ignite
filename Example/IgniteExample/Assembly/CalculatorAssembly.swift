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
import Singularity

public protocol CalculatorAssemblyType: AssemblyLayerType {
    func pow(_ x: Int, by y: Int) -> AnyPublisher<Int, Never>
}

// -----------------------------------------------------------------------------
// MARK: - Implementation
// -----------------------------------------------------------------------------

internal class CalculatorAssembly: AssemblyLayer, CalculatorAssemblyType {
    // MARK: - Private Dependency Properties

    @Inject(.main) private var multiplyService: MultiplyServiceType

    // MARK: - Protocol Implementation

    internal func pow(_ x: Int, by y: Int) -> AnyPublisher<Int, Never> {
        (0 ..< max(y, 0)).publisher
            .reduce(Just<Int>(1).eraseToAnyPublisher()) { publisher, _ -> AnyPublisher<Int, Never> in
                publisher.flatMap { [unowned self] in multiplyService.multiply($0, by: x) }.eraseToAnyPublisher()
            }
            .switchToLatest()
            .eraseToAnyPublisher()
    }
}
